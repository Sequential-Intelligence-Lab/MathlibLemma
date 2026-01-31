import Mathlib

open Filter
open Topology

lemma gronwallBound_limit_ε_to_zero {δ K x : ℝ} (hK : K ≠ 0) :
    Tendsto (fun ε : ℝ => gronwallBound δ K ε x)
      (𝓝 (0 : ℝ)) (𝓝 (δ * Real.exp (K * x))) := by
  sorry