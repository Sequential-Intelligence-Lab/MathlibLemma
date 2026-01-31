import Mathlib


variable {Ω β γ ι ι' : Type*} {m : MeasurableSpace Ω}

open MeasureTheory
lemma stoppedValue_hittingAfter_mem
    [ConditionallyCompleteLinearOrder ι] [WellFoundedLT ι]
    {u : ι → Ω → β} {s : Set β} {n : ι} {ω : Ω}
    (h : ∃ j, n ≤ j ∧ u j ω ∈ s) :
    stoppedValue u (hittingAfter u s n) ω ∈ s := by
  sorry
