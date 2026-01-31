import Mathlib

/-- If a continuous function on a complete metric space sends every Cauchy sequence
to a Cauchy sequence, it is uniformly continuous on bounded sets. -/
lemma Continuous.uniformContinuousOn_bounded_of_cauchy_image
    {X Y : Type*} [MetricSpace X] [CompleteSpace X] [Zero X] [MetricSpace Y]
    {f : X → Y} (hf : Continuous f)
    (hC : ∀ u : ℕ → X, CauchySeq u → CauchySeq (fun n => f (u n))) :
    ∀ R > 0, UniformContinuousOn f {x : X | dist x 0 ≤ R} := by
  sorry