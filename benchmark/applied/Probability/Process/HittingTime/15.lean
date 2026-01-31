import Mathlib

variable {Ω β γ ι ι' : Type*} {m : MeasurableSpace Ω}

open MeasureTheory

lemma hittingAfter_inter_ge_sup
    [ConditionallyCompleteLinearOrder ι] [WellFoundedLT ι] [InfSet ι]
    {u : ι → Ω → β} {s t : Set β} {n : ι} :
    (fun ω => max (hittingAfter u s n ω) (hittingAfter u t n ω))
      ≤ (fun ω => hittingAfter u (s ∩ t) n ω) := by
  sorry