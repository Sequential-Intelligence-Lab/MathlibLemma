import Mathlib


variable {Ω β γ ι ι' : Type*} {m : MeasurableSpace Ω}

open MeasureTheory
lemma hittingBtwn_id_eq
    [CompleteLattice ι] {s : Set ι} {n m : ι} :
    hittingBtwn (fun i (_ : Ω) => i) s n m = fun _ ↦ sInf (Set.Icc n m ∩ s) := by
  sorry
