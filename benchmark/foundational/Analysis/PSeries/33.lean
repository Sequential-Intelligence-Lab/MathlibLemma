import Mathlib

lemma Real.not_summable_one_div_nat_rpow_le_one {p : ℝ} (hp : p ≤ 1) :
    ¬ Summable (fun n : ℕ => 1 / (n : ℝ) ^ p) := by
  sorry
