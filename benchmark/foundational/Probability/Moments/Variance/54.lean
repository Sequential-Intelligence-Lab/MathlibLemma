import Mathlib

open ProbabilityTheory
open MeasureTheory

lemma variance_map_comp {Ω Ω' : Type*}
    [mΩ  : MeasurableSpace Ω]
    [mΩ' : MeasurableSpace Ω']
    (μ : Measure Ω')
    (f : Ω' → Ω)
    (X : Ω → ℝ) (hf : Measurable f) :
    variance (fun x => X (f x)) μ =
      variance X (Measure.map f μ) := by
  sorry