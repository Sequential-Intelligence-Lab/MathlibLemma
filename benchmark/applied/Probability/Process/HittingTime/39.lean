import Mathlib


variable {Ω β γ ι ι' : Type*} {m : MeasurableSpace Ω}

open MeasureTheory
lemma hittingAfter_inf_left
    [CompleteLattice ι] [InfSet ι]
    {u : ι → Ω → β} {s : Set β} {f : ℕ → ι}
    (hanti : Antitone f) :
    hittingAfter u s (sInf (Set.range f))
      ≤ fun ω => sInf (Set.range fun k => hittingAfter u s (f k) ω) := by
  sorry
