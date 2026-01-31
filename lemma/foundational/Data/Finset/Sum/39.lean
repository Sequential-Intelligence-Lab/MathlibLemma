import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma toRight_image_inl {α β} [DecidableEq (α ⊕ β)] (s : Finset α) :
    (s.image Sum.inl : Finset (α ⊕ β)).toRight = ∅ := by
  -- Use the property that the image of `inl` on `s` is a subset of `α ⊕ β` containing only `inl`-tagged elements.
  apply Eq.symm
  -- Simplify the goal to show that the image of `inl` on `s` is empty when considered as a subset of `β`.
  simp [Finset.toRight]
  -- Use the fact that `inl` and `inr` are disjoint to conclude that the image is empty.
  <;> aesop