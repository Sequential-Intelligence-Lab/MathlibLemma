import Mathlib

open scoped RealInnerProductSpace

lemma EuclideanSpace.inner_single_right_real
    {ι : Type*} [Fintype ι] [DecidableEq ι]
    (i : ι) (a : ℝ) (v : EuclideanSpace ℝ ι) :
    ⟪v, EuclideanSpace.single i a⟫ = v i * a := by
  sorry