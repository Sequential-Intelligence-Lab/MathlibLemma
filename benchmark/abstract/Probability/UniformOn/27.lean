import Mathlib

open ProbabilityTheory MeasureTheory

variable {Ω Ω' β γ ι ι' : Type*}
variable [MeasurableSpace Ω] [MeasurableSpace Ω'] {s t u A B : Set Ω}

/-! ### 1. Basic properties and characterizations of `uniformOn` -/

lemma integral_uniformOn_indicator_eq_probability
    [MeasurableSingletonClass Ω]
    [Fintype Ω]
    {t : Set Ω} :
    ∫ x, (Set.indicator t (fun _ => (1 : ℝ)) x)
      ∂(ProbabilityTheory.uniformOn (Set.univ : Set Ω)) =
      (ProbabilityTheory.uniformOn (Set.univ : Set Ω) t).toReal := by
  sorry