import Mathlib

lemma Real.not_summable_one_div_natCast_from (k : ℕ) :
    ¬ Summable fun n : ℕ => 1 / (n + k : ℝ) := by
  sorry
