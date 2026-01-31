import Mathlib

lemma Real.summable_one_div_nat_pow_add_one {p : ℕ} (hp : 1 < p) :
    Summable fun n : ℕ => 1 / (n + 1 : ℝ) ^ p := by
  sorry
