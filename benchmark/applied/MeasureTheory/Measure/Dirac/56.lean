import Mathlib


variable {α β γ δ : Type*}

open scoped ENNReal BigOperators
open Set Filter MeasureTheory

variable [MeasurableSpace α] [MeasurableSpace β] [MeasurableSpace γ]

/-! ### Brainstormed lemmas about `dirac` and basic measure theory -/
lemma Measure.dirac_notAbsolutelyContinuous_iff {a : α} {μ : Measure α} :
    ¬ Measure.dirac a ≪ μ ↔ μ {a} = 0 := by
  sorry
