import Mathlib

lemma Real.summable_pow_div_add_real {x : ℝ} (q k : ℕ) (hq : 1 < q) :
    Summable fun n : ℕ => |x / (n + k) ^ q| := by
  sorry
