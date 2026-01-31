import Mathlib


variable {Ω Ω' β γ ι ι' : Type*}
variable [MeasurableSpace Ω] [MeasurableSpace Ω'] {s t u A B : Set Ω}

/-! ### 1. Basic properties and characterizations of `uniformOn` -/

open ProbabilityTheory MeasureTheory
lemma uniformOn_compl_eq_one_sub
    [MeasurableSingletonClass Ω]
    {s t : Set Ω} (hs : s.Finite) (hs' : s.Nonempty) :
    ProbabilityTheory.uniformOn s tᶜ =
      1 - ProbabilityTheory.uniformOn s t := by
  sorry
