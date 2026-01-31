import Mathlib


variable {α β γ δ : Type*}

open scoped ENNReal BigOperators
open Set Filter MeasureTheory

variable [MeasurableSpace α] [MeasurableSpace β] [MeasurableSpace γ]

/-! ### Brainstormed lemmas about `dirac` and basic measure theory -/
lemma Measure.dirac_apply_compl_singleton_ne (a x : α) (h : a ≠ x) :
    Measure.dirac a ({x}ᶜ) = 1 := by
  sorry
