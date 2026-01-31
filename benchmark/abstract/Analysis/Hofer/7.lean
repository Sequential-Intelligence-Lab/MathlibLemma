import Mathlib

/-- If two sequences in a metric space converge, then the distance between the terms
converges to the distance between the limits. -/
lemma tendsto_dist_of_tendsto {X : Type*} [MetricSpace X]
    {u v : ℕ → X} {x y : X}
    (hu : Filter.Tendsto u Filter.atTop (nhds x))
    (hv : Filter.Tendsto v Filter.atTop (nhds y)) :
    Filter.Tendsto (fun n => dist (u n) (v n)) Filter.atTop (nhds (dist x y)) := by
  sorry