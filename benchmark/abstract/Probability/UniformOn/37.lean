import Mathlib


variable {Ω Ω' β γ ι ι' : Type*}
variable [MeasurableSpace Ω] [MeasurableSpace Ω'] {s t u A B : Set Ω}

/-! ### 1. Basic properties and characterizations of `uniformOn` -/

open ProbabilityTheory MeasureTheory
lemma uniformOn_union_le_add
    [MeasurableSingletonClass Ω]
    {s t u : Set Ω} (hs : s.Finite) :
    ProbabilityTheory.uniformOn s (t ∪ u) ≤
      ProbabilityTheory.uniformOn s t +
      ProbabilityTheory.uniformOn s u := by
  sorry
