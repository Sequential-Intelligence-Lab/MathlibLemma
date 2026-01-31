import Mathlib

open MeasureTheory ProbabilityTheory

lemma variance_eq_zero_of_ae_eq_const'
    {Ω : Type*} {mΩ : MeasurableSpace Ω}
    (μ : Measure Ω) [IsProbabilityMeasure μ]
    {X : Ω → ℝ} {c : ℝ}
    (hX : AEMeasurable X μ)
    (h : X =ᵐ[μ] fun _ => c) :
    variance X μ = 0 := by
  sorry