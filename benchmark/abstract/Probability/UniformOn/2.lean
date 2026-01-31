import Mathlib


variable {Ω Ω' β γ ι ι' : Type*}
variable [MeasurableSpace Ω] [MeasurableSpace Ω'] {s t u A B : Set Ω}

/-! ### 1. Basic properties and characterizations of `uniformOn` -/

open ProbabilityTheory MeasureTheory
lemma uniformOn_eq_one_iff {Ω} [MeasurableSpace Ω] [MeasurableSingletonClass Ω]
    {s t : Set Ω} (hs : s.Finite) (hs' : s.Nonempty) :
    ProbabilityTheory.uniformOn s t = 1 ↔ s ⊆ t := by
  sorry
