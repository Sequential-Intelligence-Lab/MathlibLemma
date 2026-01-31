import Mathlib


variable {α β γ δ : Type*}

open scoped ENNReal BigOperators
open Set Filter MeasureTheory

variable [MeasurableSpace α] [MeasurableSpace β] [MeasurableSpace γ]

/-! ### Brainstormed lemmas about `dirac` and basic measure theory -/
lemma Measure.dirac_bind {a : α} {ν : α → Measure β}
    (hν : Measurable fun x => ν x) :
    (Measure.dirac a).bind ν = ν a := by
  sorry
