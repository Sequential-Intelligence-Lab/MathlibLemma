import Mathlib


/-! 1. Variants / complements around AM-GM and Jensen-style results -/
theorem Real.geom_mean_mono_weighted
    {ι : Type*} (s : Finset ι) (w : ι → ℝ)
    {x y : ι → ℝ} (hw : ∀ i ∈ s, 0 ≤ w i)
    (hwsum : ∑ i ∈ s, w i = 1)
    (hx : ∀ i ∈ s, 0 ≤ x i) (hy : ∀ i ∈ s, 0 ≤ y i)
    (hxy : ∀ i ∈ s, x i ≤ y i) :
    ∏ i ∈ s, x i ^ w i ≤ ∏ i ∈ s, y i ^ w i := by
  classical
  -- Nonnegativity of each factor on the left and right
  have hxpow_nonneg : ∀ i ∈ s, 0 ≤ x i ^ w i := by
    intro i hi
    exact Real.rpow_nonneg (hx i hi) _
  have hypow_nonneg : ∀ i ∈ s, 0 ≤ y i ^ w i := by
    intro i hi
    exact Real.rpow_nonneg (hy i hi) _
  -- Pointwise inequality on each factor using monotonicity of rpow in the base.
  have hterm_le :
      ∀ i ∈ s, x i ^ w i ≤ y i ^ w i := by
    intro i hi
    have hxi : 0 ≤ x i := hx i hi
    have hxyi : x i ≤ y i := hxy i hi
    have hwi : 0 ≤ w i := hw i hi
    exact Real.rpow_le_rpow hxi hxyi hwi
  -- Now take product over `s`.
  exact
    Finset.prod_le_prod
      (fun i hi => hxpow_nonneg i hi)
      (fun i hi => hterm_le i hi)