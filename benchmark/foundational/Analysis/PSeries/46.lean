import Mathlib

lemma Real.not_summable_one_div_nat_add_rpow_le_one (a : ℝ) {s : ℝ} (hs : s ≤ 1) :
    ¬ Summable (fun n : ℕ => 1 / |n + a| ^ s) := by
  sorry
