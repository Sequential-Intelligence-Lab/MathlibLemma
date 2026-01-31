import Mathlib


variable {Ω Ω' β γ ι ι' : Type*}
variable [MeasurableSpace Ω] [MeasurableSpace Ω'] {s t u A B : Set Ω}

/-! ### 1. Basic properties and characterizations of `uniformOn` -/

open ProbabilityTheory MeasureTheory
lemma uniformOn_image_equiv
    [MeasurableSingletonClass Ω] [MeasurableSingletonClass Ω']
    (e : Ω ≃ Ω') (s : Set Ω) :
    ProbabilityTheory.uniformOn (e '' s) =
      (ProbabilityTheory.uniformOn s).map e := by
  sorry
