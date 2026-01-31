import Mathlib


variable {α β γ δ : Type*}

open scoped ENNReal BigOperators
open Set Filter MeasureTheory

variable [MeasurableSpace α] [MeasurableSpace β] [MeasurableSpace γ]

/-! ### Brainstormed lemmas about `dirac` and basic measure theory -/
lemma Measure.dirac_apply_preimage_eq_dirac {a : α} {f : α → β}
    (hf : Measurable f) :
    (Measure.dirac a).map f = Measure.dirac (f a) := by
  sorry
