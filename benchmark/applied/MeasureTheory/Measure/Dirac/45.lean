import Mathlib


variable {α β γ δ : Type*}

open scoped ENNReal BigOperators
open Set Filter MeasureTheory

variable [MeasurableSpace α] [MeasurableSpace β] [MeasurableSpace γ]

/-! ### Brainstormed lemmas about `dirac` and basic measure theory -/
lemma Measure.dirac_add_dirac_ne_dirac {a b : α} (h : a ≠ b) :
    (Measure.dirac a + Measure.dirac b) ≠ Measure.dirac a := by
  sorry
