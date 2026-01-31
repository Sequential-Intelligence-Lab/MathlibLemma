import Mathlib

-- We assume `gronwallBound` has type `ℝ → ℝ → ℝ → ℝ → ℝ`.
-- If its name or type is slightly different in your environment,
-- adjust the arguments accordingly, but the projections from `p` are correct.

lemma gronwallBound_smooth_in_parameters :
    ContDiff ℝ 1 (fun p : ℝ × ℝ × ℝ × ℝ =>
      gronwallBound p.1 p.2.1 p.2.2.1 p.2.2.2) := by
  sorry