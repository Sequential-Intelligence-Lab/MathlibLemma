import Mathlib

lemma Real.not_summable_nat_add_rpow_nonneg (a : ℝ) {s : ℝ} (hs : s ≤ 1) :
    ¬ Summable fun n : ℕ => |n + a| ^ (-s) := by
  sorry
