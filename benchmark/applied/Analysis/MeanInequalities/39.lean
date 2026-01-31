import Mathlib


/-! 1. Variants / complements around AM-GM and Jensen-style results -/
theorem Real.inner_le_Lp_mul_Lq_tsum
    {ι : Type*} (f g : ι → ℝ) {p q : ℝ}
    (hpq : p.HolderConjugate q)
    (hf : Summable fun i => |f i| ^ p)
    (hg : Summable fun i => |g i| ^ q) :
    Summable (fun i => f i * g i) ∧
      ∑' i, f i * g i
        ≤ (∑' i, |f i| ^ p) ^ (1 / p) *
          (∑' i, |g i| ^ q) ^ (1 / q) := by
  sorry
