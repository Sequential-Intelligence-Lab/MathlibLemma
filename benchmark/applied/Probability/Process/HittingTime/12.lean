import Mathlib


variable {Ω β γ ι ι' : Type*} {m : MeasurableSpace Ω}

open MeasureTheory
--------------------------------------------------------------------------------
-- Interactions with unions, intersections, complements
--------------------------------------------------------------------------------

lemma hittingBtwn_union_le_inf
    [ConditionallyCompleteLinearOrder ι] [WellFoundedLT ι]
    {u : ι → Ω → β} {s t : Set β} {n m : ι} :
    hittingBtwn u (s ∪ t) n m ≤ fun ω =>
      min (hittingBtwn u s n m ω) (hittingBtwn u t n m ω) := by
  sorry
