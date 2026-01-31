import Mathlib


/-! 1. Variants / complements around AM-GM and Jensen-style results -/
theorem Real.arith_mean_le_arith_mean_of_le
    {ι : Type*} (s : Finset ι) (w : ι → ℝ) (x y : ι → ℝ)
    (hw : ∀ i ∈ s, 0 ≤ w i) (hwsum : ∑ i ∈ s, w i = 1)
    (hxy : ∀ i ∈ s, x i ≤ y i) :
    ∑ i ∈ s, w i * x i ≤ ∑ i ∈ s, w i * y i := by
  sorry
