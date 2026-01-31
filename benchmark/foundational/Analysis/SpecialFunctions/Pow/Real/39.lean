import Mathlib

lemma Real.rpow_natCast_tendsto_atTop_of_gt_one {x : ℝ} (hx : 1 < x) :
    Filter.Tendsto (fun n : ℕ => x ^ (n : ℝ)) Filter.atTop Filter.atTop := by
  sorry
