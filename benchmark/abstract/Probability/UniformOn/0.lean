import Mathlib


variable {Ω Ω' β γ ι ι' : Type*}
variable [MeasurableSpace Ω] [MeasurableSpace Ω'] {s t u A B : Set Ω}

/-! ### 1. Basic properties and characterizations of `uniformOn` -/

open ProbabilityTheory MeasureTheory
lemma uniformOn_subset_null_of_infinite
    {s t : Set Ω} (hs : s.Infinite) (ht : t ⊆ sᶜ) :
    ProbabilityTheory.uniformOn s t = 0 := by
  sorry
