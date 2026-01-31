import Mathlib


variable {Ω Ω' β γ ι ι' : Type*}
variable [MeasurableSpace Ω] [MeasurableSpace Ω'] {s t u A B : Set Ω}

/-! ### 1. Basic properties and characterizations of `uniformOn` -/

open ProbabilityTheory MeasureTheory
lemma card_eq_of_uniformOn_eq
    [MeasurableSingletonClass Ω]
    {s t : Set Ω} (hs : s.Finite) (ht : t.Finite)
    (hne : s.Nonempty) (hne' : t.Nonempty)
    (h : ProbabilityTheory.uniformOn s = ProbabilityTheory.uniformOn t) :
    Nat.card s = Nat.card t := by
  sorry
