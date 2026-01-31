import Mathlib


/-! 1. Variants / complements around AM-GM and Jensen-style results -/
theorem Real.geom_mean_mono_weighted
    {ι : Type*} (s : Finset ι) (w : ι → ℝ)
    {x y : ι → ℝ} (hw : ∀ i ∈ s, 0 ≤ w i)
    (hwsum : ∑ i ∈ s, w i = 1)
    (hx : ∀ i ∈ s, 0 ≤ x i) (hy : ∀ i ∈ s, 0 ≤ y i)
    (hxy : ∀ i ∈ s, x i ≤ y i) :
    ∏ i ∈ s, x i ^ w i ≤ ∏ i ∈ s, y i ^ w i := by
  sorry
