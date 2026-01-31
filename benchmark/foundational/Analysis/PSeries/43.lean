import Mathlib

lemma Real.summable_abs_int_rpow_iff {b : ℝ} :
    Summable (fun n : ℤ => |(n : ℝ)| ^ (-b)) ↔ 1 < b := by
  sorry
