import Mathlib


variable {α β γ δ : Type*}

open scoped ENNReal BigOperators
open Set Filter MeasureTheory

variable [MeasurableSpace α] [MeasurableSpace β] [MeasurableSpace γ]

/-! ### Brainstormed lemmas about `dirac` and basic measure theory -/
lemma Measure.dirac_map_comp {a : α} {f : α → β} {g : β → γ}
    (hf : Measurable f) (hg : Measurable g) :
    (Measure.dirac a).map (g ∘ f) =
      ((Measure.dirac a).map f).map g := by
  sorry
