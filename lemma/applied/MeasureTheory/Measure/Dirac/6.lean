import Mathlib


variable {α β γ δ : Type*}

open scoped ENNReal BigOperators
open Set Filter MeasureTheory

variable [MeasurableSpace α] [MeasurableSpace β] [MeasurableSpace γ]

/-! ### Brainstormed lemmas about `dirac` and basic measure theory -/
lemma Measure.dirac_apply_diff_of_mem {a : α} {s t : Set α}
    (hs : MeasurableSet s) (ht : MeasurableSet t) (ha : a ∈ s) (hnot : a ∉ t) :
    Measure.dirac a (s \ t) = 1 := by
  -- `a` belongs to `s \ t`
  have hmem : a ∈ s \ t := ⟨ha, hnot⟩
  -- Apply the standard lemma for Dirac measure on a set containing `a`
  exact Measure.dirac_apply_of_mem hmem