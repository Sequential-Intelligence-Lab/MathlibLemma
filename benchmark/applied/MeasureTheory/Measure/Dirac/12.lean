import Mathlib


variable {α β γ δ : Type*}

open scoped ENNReal BigOperators
open Set Filter MeasureTheory

variable [MeasurableSpace α] [MeasurableSpace β] [MeasurableSpace γ]

/-! ### Brainstormed lemmas about `dirac` and basic measure theory -/
lemma Measure.dirac_apply_image_of_injective {a : α} {f : α → β}
    (hf : Measurable f) (hinj : Function.Injective f) :
    Measure.dirac (f a) = (Measure.dirac a).map f := by
  sorry
