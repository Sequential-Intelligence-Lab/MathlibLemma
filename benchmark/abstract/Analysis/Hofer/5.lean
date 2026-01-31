import Mathlib

/-- If all tails of a sequence in a metric space are contained in a closed ball,
then the limit (if it exists) is in that ball. -/
lemma tendsto.mem_closedBall_of_eventually
    {X : Type*} [MetricSpace X]
    (u : ℕ → X) (x y : X) (r : ℝ)
    (hlim : Filter.Tendsto u Filter.atTop (nhds y))
    (hball : ∀ᶠ n in (Filter.atTop : Filter ℕ), dist (u n) x ≤ r) :
    dist y x ≤ r := by
  sorry