import Mathlib

/-- A continuous function on a compact metric space is uniformly continuous, via sequences. -/
lemma Continuous.uniformContinuous_of_compact_seq
    {X Y : Type*} [MetricSpace X] [CompactSpace X] [MetricSpace Y]
    {f : X → Y} (hf : Continuous f) :
    UniformContinuous f := by
  sorry
