import Mathlib

lemma Real.not_summable_one_div_nat_pow_le_one {p : ℕ} (hp : p ≤ 1) :
    ¬ Summable (fun n : ℕ => 1 / (n : ℝ) ^ p) := by
  sorry
