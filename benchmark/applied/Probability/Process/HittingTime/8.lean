import Mathlib


variable {Ω β γ ι ι' : Type*} {m : MeasurableSpace Ω}

open MeasureTheory
lemma hittingBtwn_eq_right_of_forall_not_mem
    [ConditionallyCompleteLinearOrder ι] {u : ι → Ω → β}
    {s : Set β} {n m : ι}
    (h : ∀ j ∈ Set.Icc n m, ∀ ω, u j ω ∉ s) :
    hittingBtwn u s n m = fun _ ↦ m := by
  sorry
