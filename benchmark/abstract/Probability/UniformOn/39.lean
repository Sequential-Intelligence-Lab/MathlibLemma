import Mathlib


variable {Ω Ω' β γ ι ι' : Type*}
variable [MeasurableSpace Ω] [MeasurableSpace Ω'] {s t u A B : Set Ω}

/-! ### 1. Basic properties and characterizations of `uniformOn` -/

open ProbabilityTheory MeasureTheory
lemma uniformOn_univ_invariant_perm
    [MeasurableSingletonClass Ω]
    [Fintype Ω]
    (σ : Equiv.Perm Ω) :
    (ProbabilityTheory.uniformOn (Set.univ : Set Ω)).map σ =
      ProbabilityTheory.uniformOn (Set.univ : Set Ω) := by
  sorry
