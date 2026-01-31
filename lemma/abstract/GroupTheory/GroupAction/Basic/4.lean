import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma MulAction.fixedPoints_subset_iff [Monoid M] [MulAction M α] (S : Set α) :
    MulAction.fixedPoints M α ⊆ S ↔
      ∀ a ∈ MulAction.fixedPoints M α, a ∈ S := by
  constructor
  -- If Fix(M, α) ⊆ S, then every element of Fix(M, α) is in S.
  intro h a ha
  apply h
  exact ha
  -- If every element of Fix(M, α) is in S, then Fix(M, α) ⊆ S.
  intro h
  intro a ha
  apply h
  exact ha