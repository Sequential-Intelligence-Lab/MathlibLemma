import Mathlib


variable {α β γ δ : Type*}

open scoped ENNReal BigOperators
open Set Filter MeasureTheory

variable [MeasurableSpace α] [MeasurableSpace β] [MeasurableSpace γ]

/-! ### Brainstormed lemmas about `dirac` and basic measure theory -/
lemma Measure.dirac_restrict_of_mem {a : α} {s : Set α}
    (hs : MeasurableSet s) (h : a ∈ s) :
    (Measure.dirac a).restrict s = Measure.dirac a := by
  sorry
