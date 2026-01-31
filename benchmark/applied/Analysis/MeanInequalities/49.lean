import Mathlib


/-! 1. Variants / complements around AM-GM and Jensen-style results -/
theorem Real.sum_mul_le_L2_L2
    {ι : Type*} (s : Finset ι)
    (f g : ι → ℝ) :
    ∑ i ∈ s, |f i * g i|
      ≤ (∑ i ∈ s, f i ^ 2) ^ (1 / 2) *
        (∑ i ∈ s, g i ^ 2) ^ (1 / 2) := by
  sorry
