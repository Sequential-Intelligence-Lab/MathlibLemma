import Mathlib

open MeasureTheory

variable {Ω β γ ι ι' : Type*} {m : MeasurableSpace Ω}

/-- A lemma about the hitting time of a constant process that never hits `s`. -/
lemma hittingAfter_const_process_eq_top
    [Preorder ι] [ConditionallyCompleteLinearOrder ι] [InfSet ι]
    {x : β} {s : Set β} {n : ι}
    (hmem : x ∉ s) :
    hittingAfter (fun (_ : ι) (_ : Ω) => x) s n = fun _ : Ω => (⊤ : WithTop ι) := by
  sorry