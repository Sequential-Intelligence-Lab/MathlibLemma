import Mathlib


variable {Ω Ω' β γ ι ι' : Type*}
variable [MeasurableSpace Ω] [MeasurableSpace Ω'] {s t u A B : Set Ω}

/-! ### 1. Basic properties and characterizations of `uniformOn` -/

open ProbabilityTheory MeasureTheory
lemma uniformOn_prod_univ
    [MeasurableSingletonClass Ω] [MeasurableSingletonClass Ω']
    [Fintype Ω] [Fintype Ω'] :
    ProbabilityTheory.uniformOn (Set.univ : Set (Ω × Ω')) =
      (ProbabilityTheory.uniformOn (Set.univ : Set Ω)).prod
        (ProbabilityTheory.uniformOn (Set.univ : Set Ω')) := by
  sorry

/-! ### 3. Independence and conditional probability with uniform measures -/

variable {α : Type*} [MeasurableSpace α]
