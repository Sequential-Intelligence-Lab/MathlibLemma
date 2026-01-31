import Mathlib


variable {Ω β γ ι ι' : Type*} {m : MeasurableSpace Ω}

open MeasureTheory
lemma hittingAfter_lt_of_lt_coe
    [ConditionallyCompleteLinearOrder ι] [InfSet ι]
    {u : ι → Ω → β} {s : Set β} {n i : ι} {ω : Ω}
    (h : hittingAfter u s n ω < i) :
    hittingAfter u s n ω < (i : WithTop ι) := by
  sorry
