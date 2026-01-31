import Mathlib

lemma Real.rpow_natCast_strictMono_of_gt_one {x : ℝ} (hx : 1 < x) :
    StrictMono fun n : ℕ => x ^ (n : ℝ) := by
  sorry
