import Mathlib

lemma Real.summable_one_div_nat_pow_pos {p : ℕ} (hp : 1 < p) :
    Summable (fun n : ℕ => 1 / (n : ℝ) ^ p) := by
  sorry
