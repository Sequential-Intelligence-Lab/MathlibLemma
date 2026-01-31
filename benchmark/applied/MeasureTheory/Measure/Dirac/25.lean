import Mathlib

variable {α β γ δ : Type*}

open scoped ENNReal BigOperators
open Set Filter MeasureTheory

variable [MeasurableSpace α] [MeasurableSpace β] [MeasurableSpace γ]

/-! ### Brainstormed lemmas about `dirac` and basic measure theory -/
lemma Measure.dirac_null_mono {a : α} {s t : Set α}
    (hs : MeasurableSet s) (ht : MeasurableSet t) (hst : s ⊆ t) :
    (Measure.dirac a) s = 0 → (Measure.dirac a) t = 0 := by
  sorry