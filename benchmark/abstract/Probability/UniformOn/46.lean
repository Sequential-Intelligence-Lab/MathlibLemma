import Mathlib


variable {Ω Ω' β γ ι ι' : Type*}
variable [MeasurableSpace Ω] [MeasurableSpace Ω'] {s t u A B : Set Ω}

/-! ### 1. Basic properties and characterizations of `uniformOn` -/

open ProbabilityTheory MeasureTheory
lemma uniformOn_restrict_univ
    [MeasurableSingletonClass Ω]
    {s : Set Ω} :
    (ProbabilityTheory.uniformOn s).restrict Set.univ =
      ProbabilityTheory.uniformOn s := by
  sorry
