import Mathlib


variable {α β γ δ : Type*}

open scoped ENNReal BigOperators
open Set Filter MeasureTheory

variable [MeasurableSpace α] [MeasurableSpace β] [MeasurableSpace γ]

/-! ### Brainstormed lemmas about `dirac` and basic measure theory -/
lemma Measure.dirac_apply_eq_one_of_subset {a : α} {s t : Set α}
    (hs : MeasurableSet s) (ht : MeasurableSet t) (hst : s ⊆ t) (ha : a ∈ s) :
    Measure.dirac a t = 1 := by
  have hat : a ∈ t := hst ha
  simpa using (Measure.dirac_apply_of_mem (a := a) (s := t) hat)