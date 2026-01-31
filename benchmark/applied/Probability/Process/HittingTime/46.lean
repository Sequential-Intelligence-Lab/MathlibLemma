import Mathlib


variable {Ω β γ ι ι' : Type*} {m : MeasurableSpace Ω}

open MeasureTheory
--------------------------------------------------------------------------------
-- Pathwise properties for each ω
--------------------------------------------------------------------------------

lemma hittingBtwn_isLeast
    [ConditionallyCompleteLinearOrder ι] [WellFoundedLT ι]
    {u : ι → Ω → β} {s : Set β} {n m : ι} {ω : Ω}
    (h : ∃ j ∈ Set.Icc n m, u j ω ∈ s) :
    IsLeast {i : ι | i ∈ Set.Icc n m ∧ u i ω ∈ s} (hittingBtwn u s n m ω) := by
  sorry
