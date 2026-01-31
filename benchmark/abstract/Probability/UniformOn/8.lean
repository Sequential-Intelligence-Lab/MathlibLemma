import Mathlib


variable {Ω Ω' β γ ι ι' : Type*}
variable [MeasurableSpace Ω] [MeasurableSpace Ω'] {s t u A B : Set Ω}

/-! ### 1. Basic properties and characterizations of `uniformOn` -/

open ProbabilityTheory MeasureTheory
lemma uniformOn_eq_uniformOn_of_forall_singleton
    [MeasurableSingletonClass Ω]
    {s t : Set Ω} (hs : s.Finite) (hs' : s.Nonempty)
    (ht : t.Finite) (ht' : t.Nonempty)
    (h : ∀ x, ProbabilityTheory.uniformOn s {x} =
         ProbabilityTheory.uniformOn t {x}) :
    ProbabilityTheory.uniformOn s = ProbabilityTheory.uniformOn t := by
  sorry
