import Mathlib

open MeasureTheory

variable {Ω β ι : Type*}

lemma hittingBtwn_const_process_eq_right_not_mem
    [Preorder ι] [ConditionallyCompleteLinearOrder ι]
    {x : β} {s : Set β} {n m : ι} (hmem : x ∉ s) :
    hittingBtwn (fun _ : ι => fun _ : Ω => x) s n m = fun _ : Ω => m := by
  classical
  funext ω
  -- Unfold and simplify using the fact that x ∉ s
  simpa [hittingBtwn, hmem]