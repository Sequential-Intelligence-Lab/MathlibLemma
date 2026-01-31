import Mathlib

/-- A Schwarz lemma for maps between balls in higher dimensional complex spaces: a holomorphic map
from the unit ball in `ℂ` to a strictly convex Banach space mapping `0` to `0` is norm-contractive. -/
lemma norm_le_norm_of_mapsTo_ball_self_higher
    {E : Type*} [NormedAddCommGroup E] [NormedSpace ℂ E] [StrictConvexSpace ℝ E]
    {f : ℂ → E}
    (hDiff : DifferentiableOn ℂ f (Metric.ball 0 1))
    (h_maps : Set.MapsTo f (Metric.ball 0 1) (Metric.ball 0 1))
    (h0 : f 0 = 0) :
    ∀ z ∈ Metric.ball 0 1, ‖f z‖ ≤ ‖z‖ := by
  sorry
