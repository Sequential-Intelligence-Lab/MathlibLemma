import Mathlib


/-! 1. Variants / complements around AM-GM and Jensen-style results -/
theorem Real.geom_mean_eq_arith_mean_weighted_iff_pairwise_eq
    {ι : Type*} (s : Finset ι) (w z : ι → ℝ)
    (hw : ∀ i ∈ s, 0 ≤ w i) (hwsum : ∑ i ∈ s, w i = 1)
    (hz : ∀ i ∈ s, 0 ≤ z i) :
    ∏ i ∈ s, z i ^ w i = ∑ i ∈ s, w i * z i
      ↔ ∀ i ∈ s, ∀ j ∈ s, w i ≠ 0 → w j ≠ 0 → z i = z j := by
  sorry
