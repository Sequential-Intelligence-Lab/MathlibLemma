import Mathlib

theorem Finset.max'_eq_iff_mem_and_le {α} [LinearOrder α] {s : Finset α} (hs : s.Nonempty) {a : α} :
    s.max' hs = a ↔ a ∈ s ∧ ∀ b ∈ s, b ≤ a := by
  constructor
  · -- → direction
    intro h
    -- a is in s
    have ha_mem : a ∈ s := by
      simpa [h] using (Finset.max'_mem (s := s) hs)
    -- all elements of s are ≤ a
    have hle : s.max' hs ≤ a := by
      simpa [h] using (le_rfl : s.max' hs ≤ s.max' hs)
    have hforall : ∀ b ∈ s, b ≤ a :=
      (Finset.max'_le_iff (s := s) (H := hs)).1 hle
    exact ⟨ha_mem, hforall⟩
  · -- ← direction
    intro h
    rcases h with ⟨ha_mem, hforall⟩
    -- max' ≤ a, since a is an upper bound of s
    have h1 : s.max' hs ≤ a :=
      (Finset.max'_le_iff (s := s) (H := hs)).2 hforall
    -- every element of s is ≤ max'
    have hmax' : ∀ b ∈ s, b ≤ s.max' hs := by
      have : s.max' hs ≤ s.max' hs := le_rfl
      exact (Finset.max'_le_iff (s := s) (H := hs)).1 this
    -- in particular, a ≤ max'
    have h2 : a ≤ s.max' hs := hmax' a ha_mem
    exact le_antisymm h1 h2