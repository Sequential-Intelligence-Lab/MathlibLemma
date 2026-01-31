import Mathlib

open MeasureTheory
open ProbabilityTheory

lemma variance_ae_eq_of_sub_ae_zero
    {Ω : Type*} [MeasurableSpace Ω]
    (μ : Measure Ω) {X Y : Ω → ℝ}
    (h : X - Y =ᵐ[μ] fun _ => 0) :
    ProbabilityTheory.variance X μ = ProbabilityTheory.variance Y μ := by
  sorry