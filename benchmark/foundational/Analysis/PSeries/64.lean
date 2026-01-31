import Mathlib

lemma Real.summable_one_div_nat_rpow_from {p : ℝ} (hp : 1 < p) (k : ℕ) :
    Summable fun n : ℕ => 1 / (n + k : ℝ) ^ p := by
  sorry
