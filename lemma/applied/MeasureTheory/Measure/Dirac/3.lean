import Mathlib


variable {α β γ δ : Type*}

open scoped ENNReal BigOperators
open Set Filter MeasureTheory

variable [MeasurableSpace α] [MeasurableSpace β] [MeasurableSpace γ]

/-! ### Brainstormed lemmas about `dirac` and basic measure theory -/
lemma Measure.dirac_apply_union_of_mem_left {a : α} {s t : Set α}
    (hs : MeasurableSet s) (ht : MeasurableSet t) (ha : a ∈ s) :
    Measure.dirac a (s ∪ t) = 1 := by
  have ha_union : a ∈ s ∪ t := Or.inl ha
  simpa using (Measure.dirac_apply_of_mem (a := a) (s := s ∪ t) ha_union)