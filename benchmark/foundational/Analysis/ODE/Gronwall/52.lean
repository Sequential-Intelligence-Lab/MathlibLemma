import Mathlib

open Filter

lemma gronwallBound_limit_K_to_zero {δ ε x : ℝ} :
    Filter.Tendsto (fun K => gronwallBound δ K ε x) (nhds 0) (nhds (δ + ε * x)) := by
  sorry