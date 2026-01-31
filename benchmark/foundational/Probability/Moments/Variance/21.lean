import Mathlib

open ProbabilityTheory
open MeasureTheory

lemma variance_comp_equiv {Ω Ω' : Type*}
    [mΩ : MeasurableSpace Ω] [mΩ' : MeasurableSpace Ω']
    (μ : Measure Ω) (e : Ω ≃ᵐ Ω') (X : Ω' → ℝ) :
    variance (fun ω => X (e ω)) μ =
      variance X (Measure.map e μ) := by
  sorry