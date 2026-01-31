import Mathlib

open Filter Topology

/-- If a sequence in a metric space is Cauchy and all its points lie in a closed ball,
then its limit also lies in that closed ball. -/
lemma CauchySeq.mem_closedBall_of_tendsto
    {X : Type*} [MetricSpace X]
    {u : ℕ → X} {x y : X} {r : ℝ}
    (hc : CauchySeq u)
    (hu : ∀ n, dist (u n) x ≤ r)
    (hlim : Tendsto u atTop (nhds y)) :
    dist y x ≤ r := by
  -- First show that the limit point `y` lies in the closed ball `closedBall x r`.
  have hy_mem : y ∈ Metric.closedBall x r := by
    -- Use that closed balls are closed, together with `IsClosed.mem_of_tendsto`.
    refine IsClosed.mem_of_tendsto Metric.isClosed_closedBall hlim ?_
    -- Show that `u n` is always in the closed ball, hence eventually in it.
    refine Filter.Eventually.of_forall ?_
    intro n
    -- Translate the distance inequality `hu n` into membership in the closed ball.
    simpa [Metric.mem_closedBall] using hu n
  -- Now rewrite membership in the closed ball as the distance inequality.
  simpa [Metric.mem_closedBall] using hy_mem