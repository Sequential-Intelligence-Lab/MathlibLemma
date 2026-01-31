import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma dotProduct_eq_zero_of_orthogonal [Fintype m] [NonUnitalNonAssocSemiring α]
    (v w : m → α) :
    (v ⬝ᵥ w = 0) → v ⬝ᵥ w = 0 := by
  -- Introduce the hypothesis that the dot product of v and w is zero.
  intro h
  -- Simplify the goal using the hypothesis.
  simpa [h] using h