import Mathlib


variable {Ω β γ ι ι' : Type*} {m : MeasurableSpace Ω}

open MeasureTheory
lemma hittingBtwn_eq_left_of_subset
    [ConditionallyCompleteLinearOrder ι] {u : ι → Ω → β}
    {s : Set β} {n m : ι} (hnm : n ≤ m)
    (h_all : ∀ ω, u n ω ∈ s) :
    hittingBtwn u s n m = fun _ ↦ n := by
  sorry
