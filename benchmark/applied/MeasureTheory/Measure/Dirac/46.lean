import Mathlib

variable {α β γ δ : Type*}

open scoped ENNReal BigOperators
open Set Filter MeasureTheory

variable [MeasurableSpace α] [MeasurableSpace β] [MeasurableSpace γ]

/-! ### Brainstormed lemmas about `dirac` and basic measure theory -/
lemma dirac_add_dirac_isFinite (a b : α) :
    IsFiniteMeasure (Measure.dirac a + Measure.dirac b) := by
  sorry