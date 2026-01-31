import Mathlib


variable {Ω β γ ι ι' : Type*} {m : MeasurableSpace Ω}

open MeasureTheory
--------------------------------------------------------------------------------
-- WithTop / WithBot refinements
--------------------------------------------------------------------------------

lemma hittingAfter_le_of_le_coe
    [ConditionallyCompleteLinearOrder ι] [InfSet ι]
    {u : ι → Ω → β} {s : Set β} {n i : ι} {ω : Ω}
    (h : hittingAfter u s n ω ≤ i) :
    hittingAfter u s n ω ≤ (i : WithTop ι) := by
  sorry
