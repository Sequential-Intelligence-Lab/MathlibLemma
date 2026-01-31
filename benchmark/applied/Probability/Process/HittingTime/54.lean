import Mathlib

variable {Ω β γ ι ι' : Type*} {m : MeasurableSpace Ω}

open MeasureTheory

--------------------------------------------------------------------------------
-- Finite index sets and combinatorial versions
--------------------------------------------------------------------------------

lemma hittingBtwn_finite_eq_Min
    [LinearOrder ι] [DecidableEq ι] [InfSet ι]
    {u : ι → Ω → β} {s : Set β} {n m : ι} {ω : Ω}
    [DecidablePred (fun i : ι => u i ω ∈ s)]
    (hfin : (Set.Icc n m).Finite)
    (hex : ∃ j ∈ Set.Icc n m, u j ω ∈ s) :
    hittingBtwn u s n m ω =
      Finset.min'
        (hfin.toFinset.filter (fun i => u i ω ∈ s))
        (by
          -- existence of an element in the filtered finset
          sorry
        ) := by
  sorry