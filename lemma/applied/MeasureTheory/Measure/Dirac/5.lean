import Mathlib


variable {α β γ δ : Type*}

open scoped ENNReal BigOperators
open Set Filter MeasureTheory

variable [MeasurableSpace α] [MeasurableSpace β] [MeasurableSpace γ]

/-! ### Brainstormed lemmas about `dirac` and basic measure theory -/
lemma Measure.dirac_apply_inter_compl {a : α} {s t : Set α}
    (hs : MeasurableSet s) (ht : MeasurableSet t) (ha : a ∈ s) (hnot : a ∉ t) :
    Measure.dirac a (s ∩ tᶜ) = 1 := by
  -- `a` belongs to `s ∩ tᶜ`
  have ha_inter : a ∈ s ∩ tᶜ := ⟨ha, hnot⟩
  -- apply the standard lemma for `dirac` on a set containing `a`
  simpa using
    (Measure.dirac_apply_of_mem (a := a) (s := s ∩ tᶜ) ha_inter)