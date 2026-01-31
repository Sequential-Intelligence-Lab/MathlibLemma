import Mathlib

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