import Mathlib

open Filter
open Topology

/-- If the distance from `u n` to a point `x` tends to zero, then `u` converges to `x`. -/
lemma tendsto_of_dist_tendsto_zero {X : Type*} [MetricSpace X]
    (u : ℕ → X) (x : X)
    (h : Tendsto (fun n => dist (u n) x) Filter.atTop (nhds 0)) :
    Tendsto u Filter.atTop (nhds x) := by
  sorry