import Mathlib


variable {α β γ δ : Type*}

open scoped ENNReal BigOperators
open Set Filter MeasureTheory

variable [MeasurableSpace α] [MeasurableSpace β] [MeasurableSpace γ]

/-! ### Brainstormed lemmas about `dirac` and basic measure theory -/
lemma Measure.dirac_symm_prod
    [MeasurableSingletonClass α] [MeasurableSingletonClass β]
    (a : α) (b : β) :
    (Measure.dirac (a, b)).map Prod.swap = Measure.dirac (b, a) := by
  sorry
