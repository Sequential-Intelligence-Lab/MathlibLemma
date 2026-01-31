import Mathlib

variable {Ω β γ ι ι' : Type*} {m : MeasurableSpace Ω}

open MeasureTheory

--------------------------------------------------------------------------------
-- Behavior under continuous / monotone processes
--------------------------------------------------------------------------------

lemma hittingBtwn_const_process_eq_right
    [Preorder ι] [ConditionallyCompleteLinearOrder ι]
    {x : β} {s : Set β} {n m : ι} (hmem : x ∈ s) :
    hittingBtwn (fun (_ : ι) (_ : Ω) => x) s n m = fun _ : Ω => n := by
  sorry