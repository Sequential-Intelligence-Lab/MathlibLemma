import Mathlib

open MeasureTheory

variable {Ω β ι : Type*} {m : MeasurableSpace Ω}

lemma hittingAfter_ge_inf
    [ConditionallyCompleteLinearOrder ι] [InfSet ι]
    {u : ι → Ω → β} {s t : Set β} {n : ι} :
    (fun ω => max (hittingAfter u s n ω) (hittingAfter u t n ω))
      ≤ (fun ω => hittingAfter u (s ∩ t) n ω) := by
  sorry