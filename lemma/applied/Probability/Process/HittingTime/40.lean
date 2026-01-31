import Mathlib


variable {Ω β γ ι ι' : Type*} {m : MeasurableSpace Ω}

open MeasureTheory
--------------------------------------------------------------------------------
-- Relations with stoppedValue and optional-like constructions
--------------------------------------------------------------------------------

lemma stoppedValue_hittingBtwn_eq
    [ConditionallyCompleteLinearOrder ι] [WellFoundedLT ι]
    {u : ι → Ω → β} {s : Set β} {n m : ι} {ω : Ω}
    (h : ∃ j ∈ Set.Icc n m, u j ω ∈ s) :
    stoppedValue u (fun ω => (hittingBtwn u s n m ω : ι)) ω
      = u (hittingBtwn u s n m ω) ω := by
  -- For index-valued stopping times, `stoppedValue` is just evaluation at that index.
  -- Thus the statement is definitionally true.
  rfl