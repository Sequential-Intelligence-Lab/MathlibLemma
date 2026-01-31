import Mathlib

open scoped RealInnerProductSpace

lemma EuclideanSpace.inner_single_right_real
    {ι : Type*} [Fintype ι] [DecidableEq ι]
    (i : ι) (a : ℝ) (v : EuclideanSpace ℝ ι) :
    ⟪v, EuclideanSpace.single i a⟫ = v i * a := by
  classical
  -- Replace `v i` by `v.ofLp i` (they are definitionally the same in `EuclideanSpace`)
  change ⟪v, EuclideanSpace.single i a⟫ = v.ofLp i * a
  -- Use the existing lemma and commute the factors
  simpa [mul_comm] using
    EuclideanSpace.inner_single_right (i := i) (a := a) (v := v)