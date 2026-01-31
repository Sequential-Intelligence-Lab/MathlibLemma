import Mathlib


/-! 1. Variants / complements around AM-GM and Jensen-style results -/
theorem Real.arith_mean_le_arith_mean_of_le
    {ι : Type*} (s : Finset ι) (w : ι → ℝ) (x y : ι → ℝ)
    (hw : ∀ i ∈ s, 0 ≤ w i) (hwsum : ∑ i ∈ s, w i = 1)
    (hxy : ∀ i ∈ s, x i ≤ y i) :
    ∑ i ∈ s, w i * x i ≤ ∑ i ∈ s, w i * y i := by
  -- We show the difference is nonnegative:
  have hdiff :
      0 ≤ ∑ i ∈ s, w i * y i - ∑ i ∈ s, w i * x i := by
    -- First, prove nonnegativity of the sum of `w i * (y i - x i)`
    have hsum :
        0 ≤ ∑ i ∈ s, w i * (y i - x i) := by
      refine Finset.sum_nonneg ?_
      intro i hi
      have hwi : 0 ≤ w i := hw i hi
      have hxyi : x i ≤ y i := hxy i hi
      have hdiff_nonneg : 0 ≤ y i - x i := sub_nonneg.mpr hxyi
      exact mul_nonneg hwi hdiff_nonneg
    -- Rewrite that sum as the difference of the two weighted sums
    simpa [Finset.sum_sub_distrib, mul_sub] using hsum
  -- Convert `0 ≤ ∑ w i * y i - ∑ w i * x i` into the desired inequality
  exact (sub_nonneg.mp hdiff)