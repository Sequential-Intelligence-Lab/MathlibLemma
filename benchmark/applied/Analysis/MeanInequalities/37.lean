import Mathlib

/-! 1. Variants / complements around AM-GM and Jensen-style results -/

namespace Real

theorem expect_geometric_mean_le_expect_arith_mean
    {ι : Type*} (s : Finset ι) (hs : s.Nonempty)
    (f : ι → ℝ) (hf : ∀ i ∈ s, 0 ≤ f i) :
    (∏ i ∈ s, f i) ^ (1 / (s.card : ℝ))
      ≤ (s.card : ℝ)⁻¹ * ∑ i ∈ s, f i := by
  sorry

end Real