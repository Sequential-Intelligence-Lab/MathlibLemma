import Mathlib


variable {Ω β γ ι ι' : Type*} {m : MeasurableSpace Ω}

open MeasureTheory
lemma hittingAfter_eq_top_of_forall_not_mem
    [ConditionallyCompleteLinearOrder ι] [InfSet ι] {u : ι → Ω → β}
    {s : Set β} {n : ι}
    (h : ∀ j ≥ n, ∀ ω, u j ω ∉ s) :
    hittingAfter u s n = fun _ ↦ (⊤ : WithTop ι) := by
  sorry
