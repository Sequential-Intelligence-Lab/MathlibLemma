import Mathlib

lemma Real.rpow_natCast_tendsto_one_of_abs_lt_one {x : ℝ} (hx : |x| < 1) :
    Filter.Tendsto (fun n : ℕ => x ^ (n : ℝ)) Filter.atTop (nhds (0 : ℝ)) := by
  sorry