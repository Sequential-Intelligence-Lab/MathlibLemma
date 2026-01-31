import Mathlib


variable {Ω β γ ι ι' : Type*} {m : MeasurableSpace Ω}

open MeasureTheory
lemma hittingAfter_union_le_inf
    [ConditionallyCompleteLinearOrder ι] [WellFoundedLT ι] [InfSet ι]
    {u : ι → Ω → β} {s t : Set β} {n : ι} :
    hittingAfter u (s ∪ t) n ≤ fun ω =>
      min (hittingAfter u s n ω) (hittingAfter u t n ω) := by
  sorry
