import Mathlib

/-- A version of Schwarz lemma in several complex variables for a map from `ℂ` to a complex Banach
space with an equivalent norm making the unit ball strictly convex. -/
lemma norm_deriv_le_of_mapsTo_strictConvexUnitBall
    {E : Type*} [NormedAddCommGroup E] [NormedSpace ℂ E]
    [StrictConvexSpace ℝ E]
    {f : ℂ → E}
    (hDiff : DifferentiableOn ℂ f (Metric.ball 0 1))
    (h_maps : Set.MapsTo f (Metric.ball 0 1) (Metric.ball 0 1))
    (h0 : f 0 = 0) :
    ‖deriv f 0‖ ≤ 1 := by
  sorry
