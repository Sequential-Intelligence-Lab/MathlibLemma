import Mathlib

/-- If `f` is uniformly continuous and `u` is Cauchy, then `f ∘ u` is Cauchy. -/
lemma CauchySeq.comp_uniformContinuous
    {X Y : Type*} [MetricSpace X] [MetricSpace Y]
    {f : X → Y} (hf : UniformContinuous f)
    {u : ℕ → X} (hu : CauchySeq u) :
    CauchySeq (fun n => f (u n)) := by
  sorry
