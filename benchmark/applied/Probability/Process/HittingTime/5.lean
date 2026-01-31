import Mathlib

variable {Ω β γ ι ι' : Type*} {m : MeasurableSpace Ω}

open MeasureTheory

lemma hittingAfter_le_hittingBtwn
    [ConditionallyCompleteLinearOrder ι] [InfSet ι]
    {u : ι → Ω → β} {s : Set β} {n m : ι} :
    (MeasureTheory.hittingAfter u s n :
      Ω → WithTop ι) ≤ fun ω ↦ (WithTop.some (MeasureTheory.hittingBtwn u s n m ω)) := by
  sorry