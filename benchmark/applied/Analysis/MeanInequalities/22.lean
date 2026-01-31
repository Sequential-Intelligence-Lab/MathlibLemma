import Mathlib


/-! 1. Variants / complements around AM-GM and Jensen-style results -/
theorem Real.inner_le_Lp_mul_Lq_union
    {ι : Type*} [DecidableEq ι]
    (s t : Finset ι) (f g : ι → ℝ)
    {p q : ℝ} (hpq : p.HolderConjugate q) :
    ∑ i ∈ (s ∪ t), f i * g i
      ≤ (∑ i ∈ (s ∪ t), |f i| ^ p) ^ (1 / p) *
        (∑ i ∈ (s ∪ t), |g i| ^ q) ^ (1 / q) := by
  sorry
