import Mathlib


/-! 1. Variants / complements around AM-GM and Jensen-style results -/
theorem Real.inner_le_Lp_mul_Lq_scaled
    {ι : Type*} (s : Finset ι)
    (f g : ι → ℝ) {p q : ℝ}
    (hpq : p.HolderConjugate q) (c d : ℝ) :
    ∑ i ∈ s, (c * f i) * (d * g i)
      ≤ |c| * |d| *
        (∑ i ∈ s, |f i| ^ p) ^ (1 / p) *
        (∑ i ∈ s, |g i| ^ q) ^ (1 / q) := by
  sorry
