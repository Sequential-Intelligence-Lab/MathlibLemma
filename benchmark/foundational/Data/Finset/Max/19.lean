import Mathlib

theorem Finset.min'_eq_of_mem {α} [LinearOrder α] {s : Finset α} (hs : s.Nonempty)
    {a b : α} (ha : a ∈ s) (hb : b ∈ s) (hle : ∀ x ∈ s, a ≤ x ↔ b ≤ x) :
    s.min' hs = a ↔ s.min' hs = b := by
  sorry
