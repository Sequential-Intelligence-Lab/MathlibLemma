import Mathlib


variable {α β γ δ : Type*}

open scoped ENNReal BigOperators
open Set Filter MeasureTheory

variable [MeasurableSpace α] [MeasurableSpace β] [MeasurableSpace γ]

/-! ### Brainstormed lemmas about `dirac` and basic measure theory -/
lemma Measure.dirac_apply_mono {a : α} {s t : Set α}
    (hs : MeasurableSet s) (ht : MeasurableSet t) (hst : s ⊆ t) :
    Measure.dirac a s ≤ Measure.dirac a t := by
  by_cases h : a ∈ s
  · -- Case a ∈ s
    have ha_t : a ∈ t := hst h
    simp [Measure.dirac_apply, hs, ht, h, ha_t]
  · -- Case a ∉ s
    simp [Measure.dirac_apply, hs, ht, h]