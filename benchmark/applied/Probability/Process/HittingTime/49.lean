import Mathlib


variable {Ω β γ ι ι' : Type*} {m : MeasurableSpace Ω}

open MeasureTheory
lemma hittingAfter_eq_iff_le_mem
    [ConditionallyCompleteLinearOrder ι] [WellFoundedLT ι] [InfSet ι]
    {u : ι → Ω → β} {s : Set β} {n : ι} {i : ι} {ω : Ω} :
    hittingAfter u s n ω = i ↔
      n ≤ i ∧ u i ω ∈ s ∧ (∀ j, n ≤ j → j < i → u j ω ∉ s) := by
  sorry
