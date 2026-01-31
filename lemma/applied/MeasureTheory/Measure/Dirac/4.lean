import Mathlib


variable {α β γ δ : Type*}

open scoped ENNReal BigOperators
open Set Filter MeasureTheory

variable [MeasurableSpace α] [MeasurableSpace β] [MeasurableSpace γ]

/-! ### Brainstormed lemmas about `dirac` and basic measure theory -/
lemma Measure.dirac_apply_union_of_mem_right {a : α} {s t : Set α}
    (hs : MeasurableSet s) (ht : MeasurableSet t) (ha : a ∈ t) :
    Measure.dirac a (s ∪ t) = 1 := by
  have hst : MeasurableSet (s ∪ t) := hs.union ht
  have hmem : a ∈ s ∪ t := Or.inr ha
  -- Use the standard formula for `dirac` on measurable sets
  simpa [Measure.dirac_apply, hst, hmem]