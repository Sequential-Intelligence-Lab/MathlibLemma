import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma gronwallBound_smooth_in_parameters :
    ContDiff ℝ 1 (fun p : ℝ × ℝ × ℝ × ℝ =>
      gronwallBound p.1 p.2.1 p.2.2.1 p.2.2.2) := by
  have h_main : ContDiff ℝ 1 (fun p : ℝ × ℝ × ℝ × ℝ => gronwallBound p.1 p.2.1 p.2.2.1 p.2.2.2) := by
    sorry
  exact h_main