import Mathlib


/-! 1. Variants / complements around AM-GM and Jensen-style results -/
theorem Real.geom_mean_le_arith_mean_weighted_const_weight
    {ι : Type*} (s : Finset ι) (z : ι → ℝ)
    (hs : s.Nonempty) (hz : ∀ i ∈ s, 0 ≤ z i) :
    (∏ i ∈ s, z i) ^ (1 / (s.card : ℝ)) ≤
      (∑ i ∈ s, z i) / (s.card : ℝ) := by
  sorry
