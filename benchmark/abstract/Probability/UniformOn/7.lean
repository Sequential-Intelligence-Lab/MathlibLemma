import Mathlib


variable {Ω Ω' β γ ι ι' : Type*}
variable [MeasurableSpace Ω] [MeasurableSpace Ω'] {s t u A B : Set Ω}

/-! ### 1. Basic properties and characterizations of `uniformOn` -/

open ProbabilityTheory MeasureTheory
lemma uniformOn_eq_of_forall_singleton
    [MeasurableSingletonClass Ω]
    {s : Set Ω} (hs : s.Finite) (hs' : s.Nonempty)
    {μ : Measure Ω}
    (hμ : IsProbabilityMeasure μ)
    (h : ∀ x ∈ s, μ {x} = ProbabilityTheory.uniformOn s {x}) :
    μ = ProbabilityTheory.uniformOn s := by
  sorry
