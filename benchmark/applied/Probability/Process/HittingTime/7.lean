import Mathlib


variable {Ω β γ ι ι' : Type*} {m : MeasurableSpace Ω}

open MeasureTheory
lemma hittingAfter_eq_start_of_subset
    [ConditionallyCompleteLinearOrder ι] [InfSet ι] {u : ι → Ω → β}
    {s : Set β} {n : ι}
    (h_all : ∀ ω, u n ω ∈ s) :
    hittingAfter u s n = fun _ ↦ (n : WithTop ι) := by
  sorry
