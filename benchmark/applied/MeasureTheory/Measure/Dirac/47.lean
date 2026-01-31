import Mathlib

variable {α β γ δ : Type*}

open scoped ENNReal BigOperators
open Set Filter MeasureTheory

variable [MeasurableSpace α] [MeasurableSpace β] [MeasurableSpace γ]

/-! ### Brainstormed lemmas about `dirac` and basic measure theory -/
lemma Measure.dirac_add_dirac_isProbability_iff {a b : α} :
    MeasureTheory.IsProbabilityMeasure (Measure.dirac a + Measure.dirac b) ↔ False := by
  sorry