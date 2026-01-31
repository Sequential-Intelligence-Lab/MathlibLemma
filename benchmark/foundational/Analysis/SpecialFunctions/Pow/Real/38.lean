import Mathlib

open Filter Topology

lemma Real.rpow_natCast_tendsto_atTop_of_lt_one
    {x : ℝ} (hx0 : 0 < x) (hx1 : x < 1) :
    Filter.Tendsto (fun n : ℕ => x ^ (n : ℝ)) Filter.atTop (𝓝 (0 : ℝ)) := by
  sorry