import Mathlib


variable {α β γ δ : Type*}

open scoped ENNReal BigOperators
open Set Filter MeasureTheory

variable [MeasurableSpace α] [MeasurableSpace β] [MeasurableSpace γ]

/-! ### Brainstormed lemmas about `dirac` and basic measure theory -/
lemma Measure.dirac_ne_dirac_iff_exists_measurableSet_of_nontrivial
    [Nonempty α] [MeasurableSingletonClass α] {x y : α} :
    Measure.dirac x ≠ Measure.dirac y ↔
      ∃ s, MeasurableSet s ∧ x ∈ s ∧ y ∉ s := by
  sorry
