import Mathlib

open ProbabilityTheory MeasureTheory

variable {Ω Ω' β γ ι ι' : Type*}
variable [MeasurableSpace Ω] [MeasurableSpace Ω'] {s t u A B : Set Ω}

/-! ### 1. Basic properties and characterizations of `uniformOn` -/

noncomputable section
open Classical

lemma uniformOn_pair
    [MeasurableSingletonClass Ω]
    [DecidableEq Ω]
    {a b : Ω} (h : a ≠ b) {t : Set Ω} :
    ProbabilityTheory.uniformOn ({a, b} : Set Ω) t =
      ((if a ∈ t then 1 else 0) +
       (if b ∈ t then 1 else 0)) / 2 := by
  sorry