import Mathlib

/-- In `GHSpace`, closed balls are totally bounded. -/
lemma GromovHausdorff.totallyBounded_closedBall
    (p : GromovHausdorff.GHSpace) (r : ℝ) :
    TotallyBounded (Metric.closedBall p r) := by
  sorry
