import Mathlib


/-! 1. Variants / complements around AM-GM and Jensen-style results -/
theorem Real.Lp_add_le_tsum'
    {ι : Type*} (f g : ι → ℝ) {p : ℝ}
    (hp : 1 ≤ p)
    (hf : Summable fun i => |f i| ^ p)
    (hg : Summable fun i => |g i| ^ p) :
    (∑' i, |f i + g i| ^ p) ^ (1 / p)
      ≤ (∑' i, |f i| ^ p) ^ (1 / p)
        + (∑' i, |g i| ^ p) ^ (1 / p) := by
  sorry
