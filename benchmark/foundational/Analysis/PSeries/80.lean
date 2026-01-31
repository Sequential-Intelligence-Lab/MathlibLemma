import Mathlib

lemma Real.summable_one_div_nat_rpow_iff_decay_rate {p : ℝ} :
    Summable (fun n : ℕ => 1 / (n : ℝ) ^ p) ↔
      (∃ c > 1, p = c) := by
  sorry
