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
  sorry