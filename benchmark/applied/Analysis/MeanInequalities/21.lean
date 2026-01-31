import Mathlib


/-! 1. Variants / complements around AM-GM and Jensen-style results -/
theorem Real.inner_le_Lp_mul_Lq_indicator
    {ι : Type*} [DecidableEq ι] (s t : Finset ι)
    (f g : ι → ℝ) {p q : ℝ}
    (hpq : p.HolderConjugate q) :
    ∑ i ∈ s, (if i ∈ t then f i else 0) * g i
      ≤ (∑ i ∈ s, |if i ∈ t then f i else 0| ^ p) ^ (1 / p) *
        (∑ i ∈ s, |g i| ^ q) ^ (1 / q) := by
  sorry
