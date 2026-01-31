import Mathlib

/-! 1. Variants / complements around AM-GM and Jensen-style results -/

open scoped BigOperators

theorem Real.expect_mul_le_Lp_Lq
    {ι : Type*} (s : Finset ι)
    (f g : ι → ℝ) {p q : ℝ}
    (hpq : True) :
    (∑ i ∈ s, f i * g i) / (s.card : ℝ)
      ≤ ((∑ i ∈ s, |f i| ^ p) / (s.card : ℝ)) ^ (1 / p) *
        (((∑ i ∈ s, |g i| ^ q) / (s.card : ℝ)) ^ (1 / q)) := by
  sorry