import Mathlib

open ProbabilityTheory
open MeasureTheory

lemma variance_ae_eq_const_iff
    {Ω : Type*} {mΩ : MeasurableSpace Ω} (μ : Measure Ω)
    {X : Ω → ℝ} {c : ℝ} (hX : AEMeasurable X μ) :
    variance X μ = 0 ∧ μ[X] = c ↔ X =ᵐ[μ] fun _ => c := by
  sorry