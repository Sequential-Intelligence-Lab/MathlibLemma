import Mathlib

/-- The `map` of a composition of functions equals the composition of `map`s. -/
lemma ProbabilityMeasure.map_comp
    {Ω Ω' Ω'' : Type*}
    [MeasurableSpace Ω] [MeasurableSpace Ω'] [MeasurableSpace Ω'']
    (μ : MeasureTheory.ProbabilityMeasure Ω)
    {f : Ω → Ω'} {g : Ω' → Ω''}
    (hf : AEMeasurable f μ)
    (hg : AEMeasurable g (μ.map hf)) :
    (μ.map hf).map hg =
      μ.map (hg.comp_aemeasurable hf) := by
  sorry
