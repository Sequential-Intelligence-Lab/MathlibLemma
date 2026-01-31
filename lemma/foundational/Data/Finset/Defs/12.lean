import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Finset.ssubset_of_subset_of_ne {α} {s t : Finset α} (h₁ : s ⊆ t) (h₂ : s ≠ t) :
    s ⊂ t := by
  -- Use the definition of proper subset, which requires s ⊆ t and s ≠ t.
  rw [Finset.ssubset_iff_subset_ne] <;> exact ⟨h₁, h₂⟩