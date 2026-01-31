import Mathlib


/-! 1. Variants / complements around AM-GM and Jensen-style results -/
theorem Real.geom_mean_le_arith_mean_weighted_on_univ
    (ι : Type*) [Fintype ι]
    (w z : ι → ℝ)
    (hw : ∀ i, 0 ≤ w i) (hwsum : ∑ i, w i = 1)
    (hz : ∀ i, 0 ≤ z i) :
    ∏ i, z i ^ w i ≤ ∑ i, w i * z i := by
  sorry
