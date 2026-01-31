import Mathlib

/-- A sequence of sets in a metric space with decreasing closed balls and radius tending to 0
has an intersection which contains at most one point. -/
lemma card_intersection_closedBalls_le_one
    {X : Type*} [MetricSpace X] [ProperSpace X]
    (x : ℕ → X) (r : ℕ → ℝ)
    (hmono : ∀ n, r (n + 1) ≤ r n)
    (hr0 : Filter.Tendsto r Filter.atTop (nhds (0 : ℝ))) :
    (Set.sInter (Set.range fun n => Metric.closedBall (x n) (r n))).Subsingleton := by
  sorry