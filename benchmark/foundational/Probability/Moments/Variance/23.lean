import Mathlib

open MeasureTheory
open ProbabilityTheory

lemma variance_ae_eq_of_eq_on
    {Ω : Type*} {mΩ : MeasurableSpace Ω}
    {μ : Measure Ω} {X Y : Ω → ℝ}
    (h : X =ᵐ[μ] Y) :
    ProbabilityTheory.variance X μ =
    ProbabilityTheory.variance Y μ := by
  sorry