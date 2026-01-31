import Mathlib

/-- If a function on a compact metric space is uniformly continuous, then for any sequence
with vanishing distances, the images also have vanishing distances. -/
lemma UniformContinuous.tendsto_dist_zero_of_tendsto_dist_zero
    {X Y : Type*} [MetricSpace X] [MetricSpace Y] [CompactSpace X]
    {f : X → Y} (hf : UniformContinuous f)
    {u v : ℕ → X}
    (h : Filter.Tendsto (fun n => dist (u n) (v n)) Filter.atTop (nhds 0)) :
    Filter.Tendsto (fun n => dist (f (u n)) (f (v n))) Filter.atTop (nhds 0) := by
  sorry