import Mathlib


variable {Ω Ω' β γ ι ι' : Type*}
variable [MeasurableSpace Ω] [MeasurableSpace Ω'] {s t u A B : Set Ω}

/-! ### 1. Basic properties and characterizations of `uniformOn` -/

open ProbabilityTheory MeasureTheory
lemma uniformOn_eq_of_restrict_eq
    [MeasurableSingletonClass Ω]
    {s t : Set Ω}
    (h : (ProbabilityTheory.uniformOn s).restrict s =
         (ProbabilityTheory.uniformOn t).restrict s)
    (hs : s.Finite) (hs' : s.Nonempty) :
    ProbabilityTheory.uniformOn s = ProbabilityTheory.uniformOn t := by
  sorry
