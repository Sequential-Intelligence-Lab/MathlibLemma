import Mathlib


variable {α β γ δ : Type*}

open scoped ENNReal BigOperators
open Set Filter MeasureTheory

variable [MeasurableSpace α] [MeasurableSpace β] [MeasurableSpace γ]

/-! ### Brainstormed lemmas about `dirac` and basic measure theory -/
lemma Measure.dirac_apply_compl_singleton (a x : α) [DecidableEq α] :
    Measure.dirac a ({x}ᶜ) = if a = x then 0 else 1 := by
  sorry
