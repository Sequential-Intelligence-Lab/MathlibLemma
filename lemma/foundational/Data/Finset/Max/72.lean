import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

theorem Finset.max'_subset_iff {α} [LinearOrder α] {s t : Finset α}
    (hs : s.Nonempty) (ht : t.Nonempty) :
    s.max' hs ≤ t.max' ht ↔ ∀ a ∈ s, ∃ b ∈ t, a ≤ b := by
  constructor
  · -- Prove the forward direction: s.max' hs ≤ t.max' ht → ∀ a ∈ s, ∃ b ∈ t, a ≤ b
    intro h
    intro a ha
    have h₁ : a ≤ s.max' hs := Finset.le_max' s a ha
    have h₂ : a ≤ t.max' ht := le_trans h₁ h
    refine' ⟨t.max' ht, Finset.max'_mem t ht, _⟩
    exact h₂
  · -- Prove the backward direction: (∀ a ∈ s, ∃ b ∈ t, a ≤ b) → s.max' hs ≤ t.max' ht
    intro h
    have h₁ : ∃ b ∈ t, s.max' hs ≤ b := h (s.max' hs) (Finset.max'_mem s hs)
    obtain ⟨b, hb, hb'⟩ := h₁
    have h₂ : b ≤ t.max' ht := Finset.le_max' t b hb
    exact le_trans hb' h₂