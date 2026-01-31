import Mathlib


variable {α β γ δ : Type*}

open scoped ENNReal BigOperators
open Set Filter MeasureTheory

variable [MeasurableSpace α] [MeasurableSpace β] [MeasurableSpace γ]

/-! ### Brainstormed lemmas about `dirac` and basic measure theory -/
lemma Measure.dirac_restrict_of_not_mem {a : α} {s : Set α}
    (hs : MeasurableSet s) (h : a ∉ s) :
    (Measure.dirac a).restrict s = 0 := by
  -- Two measures are equal if they agree on all measurable sets.
  ext t ht
  -- Compute the value of the restricted measure on `t`.
  have hmeas : MeasurableSet (t ∩ s) := ht.inter hs
  -- Show that `a` is not in `t ∩ s`.
  have hnot : a ∉ t ∩ s := by
    intro ha
    exact h ha.2
  -- Now compute both sides.
  simp [Measure.restrict_apply, hs, ht, Measure.dirac_apply, hmeas, hnot]