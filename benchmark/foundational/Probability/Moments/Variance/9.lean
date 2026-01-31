import Mathlib

open scoped BigOperators
open ProbabilityTheory
open MeasureTheory

lemma variance_ae_eq_const
    {Ω : Type*} [MeasurableSpace Ω]
    (μ : MeasureTheory.Measure Ω) {X : Ω → ℝ} {c : ℝ}
    (h : X =ᵐ[μ] fun _ => c) :
    variance X μ = 0 := by
  sorry