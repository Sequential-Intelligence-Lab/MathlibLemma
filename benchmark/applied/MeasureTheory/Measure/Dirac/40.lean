import Mathlib


variable {α β γ δ : Type*}

open scoped ENNReal BigOperators
open Set Filter MeasureTheory

variable [MeasurableSpace α] [MeasurableSpace β] [MeasurableSpace γ]

/-! ### Brainstormed lemmas about `dirac` and basic measure theory -/
lemma Measure.dirac_marginal_fst {a : α} {b : β}
    [MeasurableSingletonClass α] [MeasurableSingletonClass β] :
    (Measure.dirac (a, b)).map Prod.fst = Measure.dirac a := by
  sorry
