import Mathlib


variable {α β γ δ : Type*}

open scoped ENNReal BigOperators
open Set Filter MeasureTheory

variable [MeasurableSpace α] [MeasurableSpace β] [MeasurableSpace γ]

/-! ### Brainstormed lemmas about `dirac` and basic measure theory -/
lemma Measure.dirac_apply_inter_left_of_mem {a : α} {s t : Set α}
    (hs : MeasurableSet s) (ht : MeasurableSet t) (ha : a ∈ s) :
    Measure.dirac a (s ∩ t) = Measure.dirac a t := by
  classical
  have hst : MeasurableSet (s ∩ t) := hs.inter ht
  by_cases hat : a ∈ t
  ·
    have ha' : a ∈ s ∩ t := ⟨ha, hat⟩
    simp [Measure.dirac_apply, hst, ht, ha', hat]
  ·
    have ha' : a ∉ s ∩ t := by
      intro h
      exact hat h.2
    simp [Measure.dirac_apply, hst, ht, ha', hat]