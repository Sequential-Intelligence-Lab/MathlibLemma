import Mathlib


/-! 1. Variants / complements around AM-GM and Jensen-style results -/
theorem Real.summable_mul_of_Lp_Lq
    {ι : Type*} (f g : ι → ℝ) {p q : ℝ}
    (hpq : p.HolderConjugate q)
    (hf : Summable fun i => |f i| ^ p)
    (hg : Summable fun i => |g i| ^ q) :
    Summable fun i => f i * g i := by
  sorry
