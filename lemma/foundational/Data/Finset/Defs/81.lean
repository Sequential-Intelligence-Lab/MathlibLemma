import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat


theorem Finset.not_subset_iff_exists {α} {s t : Finset α} :
    ¬ s ⊆ t ↔ ∃ a, a ∈ s ∧ a ∉ t := by
  apply Iff.intro
  · -- Assume h : ¬ s ⊆ t, prove ∃ a, a ∈ s ∧ a ∉ t
    intro h
    by_contra h2
    push_neg at h2
    have h3 : s ⊆ t := by
      intro x hx
      specialize h2 x hx
      simpa using h2
    exact h h3
  · -- Assume h : ∃ a, a ∈ s ∧ a ∉ t, prove ¬ s ⊆ t
    intro h
    intro h1
    rcases h with ⟨a, ha1, ha2⟩
    have h2 : a ∈ t := by
      apply h1
      exact ha1
    simp at h2 ha2
    all_goals tauto