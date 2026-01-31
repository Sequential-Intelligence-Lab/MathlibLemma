import Mathlib


variable {Ω Ω' β γ ι ι' : Type*}
variable [MeasurableSpace Ω] [MeasurableSpace Ω'] {s t u A B : Set Ω}

/-! ### 1. Basic properties and characterizations of `uniformOn` -/

open ProbabilityTheory MeasureTheory
lemma uniformOn_map_equiv_univ
    [MeasurableSingletonClass Ω] [MeasurableSingletonClass Ω']
    [Fintype Ω] [Fintype Ω']
    (e : Ω ≃ Ω') :
    (ProbabilityTheory.uniformOn (Set.univ : Set Ω)).map e =
      ProbabilityTheory.uniformOn (Set.univ : Set Ω') := by
  sorry
