import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat


/-
The following are purely hypothetical / proposed lemmas.
They are intentionally left with `sorry` proofs.
-/

/-- 77. Determinant of matrix of a linear isometry over ℝ has absolute value 1. -/
lemma LinearIsometry.abs_det_toLinearEquiv
    {V} [NormedAddCommGroup V] [InnerProductSpace ℝ V] [FiniteDimensional ℝ V]
    (f : V →ₗᵢ[ℝ] V) :
    |f.toLinearMap.det| = (1 : ℝ) := by
  sorry

theorem t1 (a b c d : ℝ) (h : a * d - b * c = 1) : |a * d - b * c| = 1 := by
  rw [show a * d - b * c = 1 by linarith]
  all_goals norm_num