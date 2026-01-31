import Mathlib

open MeasureTheory

variable {Ω β γ ι ι' : Type*} {m : MeasurableSpace Ω}

lemma hittingAfter_int_shift
    [ConditionallyCompleteLinearOrder ι] [InfSet ι]
    [Add ι] [Zero ι]
    [Sub (WithTop ι)]
    {u : ι → Ω → β} {s : Set β} {n k : ι} :
    hittingAfter (fun i ω => u (i + k) ω) s n
      = fun ω ↦ (hittingAfter u s (n + k) ω) - (k : WithTop ι) := by
  sorry