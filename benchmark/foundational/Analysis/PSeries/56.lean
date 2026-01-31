import Mathlib

lemma Real.not_summable_int_add_rpow_nonneg (a : ℝ) {s : ℝ} (hs : s ≤ 1) :
    ¬ Summable fun n : ℤ => |n + a| ^ (-s) := by
  sorry
