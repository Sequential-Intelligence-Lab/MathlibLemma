import Mathlib

variable {α β γ δ : Type*}

open scoped ENNReal BigOperators
open Set Filter MeasureTheory

variable [MeasurableSpace α] [MeasurableSpace β] [MeasurableSpace γ]

/-! ### Brainstormed lemmas about `dirac` and basic measure theory -/
lemma dirac_isProbabilityMeasure (a : α) :
    MeasureTheory.IsProbabilityMeasure (Measure.dirac a) := by
  sorry