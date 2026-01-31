import Mathlib

variable {Ω Ω' β γ ι ι' : Type*}
variable [MeasurableSpace Ω] [MeasurableSpace Ω'] {s t u A B : Set Ω}

/-! ### 1. Basic properties and characterizations of `uniformOn` -/

open ProbabilityTheory MeasureTheory
open Finset

lemma uniformOn_bind
    [MeasurableSingletonClass Ω]
    {s : Set Ω} {f : Ω → Measure Ω}
    (hs : s.Finite) (hs' : s.Nonempty) (hf : ∀ x ∈ s, IsProbabilityMeasure (f x)) :
    (ProbabilityTheory.uniformOn s).bind f =
      ∑ x ∈ hs.toFinset, (ProbabilityTheory.uniformOn s {x}) • f x := by
  sorry