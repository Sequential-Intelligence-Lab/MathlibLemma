import Mathlib

open MeasureTheory

lemma variance_map_comap
    {Ω Ω' : Type*}
    [mΩ : MeasurableSpace Ω] [mΩ' : MeasurableSpace Ω']
    (μ : Measure Ω) (f : Ω' → Ω) (X : Ω → ℝ)
    (hf : Measurable f) :
    ProbabilityTheory.variance (fun x => X (f x)) (Measure.comap f μ) =
      ProbabilityTheory.variance X μ := by
  sorry