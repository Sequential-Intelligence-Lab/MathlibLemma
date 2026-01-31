import Mathlib


variable {Ω Ω' β γ ι ι' : Type*}
variable [MeasurableSpace Ω] [MeasurableSpace Ω'] {s t u A B : Set Ω}

/-! ### 1. Basic properties and characterizations of `uniformOn` -/

open ProbabilityTheory MeasureTheory
lemma uniformOn_subset_ne_zero_iff
    [MeasurableSingletonClass Ω]
    {s t : Set Ω} (hs : s.Finite) :
    ProbabilityTheory.uniformOn s t ≠ 0 ↔ (s ∩ t).Nonempty := by
  sorry
