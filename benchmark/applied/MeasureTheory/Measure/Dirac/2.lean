import Mathlib


variable {α β γ δ : Type*}

open scoped ENNReal BigOperators
open Set Filter MeasureTheory

variable [MeasurableSpace α] [MeasurableSpace β] [MeasurableSpace γ]

/-! ### Brainstormed lemmas about `dirac` and basic measure theory -/
lemma Measure.dirac_apply_inter_right_of_mem {a : α} {s t : Set α}
    (hs : MeasurableSet s) (ht : MeasurableSet t) (ha : a ∈ t) :
    Measure.dirac a (s ∩ t) = Measure.dirac a s := by
  sorry
