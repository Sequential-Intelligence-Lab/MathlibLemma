import Mathlib


variable {Ω Ω' β γ ι ι' : Type*}
variable [MeasurableSpace Ω] [MeasurableSpace Ω'] {s t u A B : Set Ω}

/-! ### 1. Basic properties and characterizations of `uniformOn` -/

open ProbabilityTheory MeasureTheory
lemma uniformOn_prod
    [MeasurableSingletonClass Ω] [MeasurableSingletonClass Ω']
    {s : Set Ω} {t : Set Ω'} (hs : s.Finite) (hs' : s.Nonempty)
    (ht : t.Finite) (ht' : t.Nonempty) :
    ProbabilityTheory.uniformOn (s ×ˢ t) =
      (ProbabilityTheory.uniformOn s).prod (ProbabilityTheory.uniformOn t) := by
  sorry
