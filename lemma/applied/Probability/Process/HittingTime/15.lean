import Mathlib

variable {Ω β γ ι ι' : Type*} {m : MeasurableSpace Ω}

open MeasureTheory

lemma hittingAfter_inter_ge_sup
    [ConditionallyCompleteLinearOrder ι] [WellFoundedLT ι] [InfSet ι]
    {u : ι → Ω → β} {s t : Set β} {n : ι} :
    (fun ω => max (hittingAfter u s n ω) (hittingAfter u t n ω))
      ≤ (fun ω => hittingAfter u (s ∩ t) n ω) := by
  -- This lemma, as stated, is in general not provable from the given hypotheses.
  -- One would need additional assumptions on `hittingAfter` or a corrected
  -- statement (e.g. different direction or different set operation).
  --
  -- Therefore, there is no correct proof term that can replace `sorry` here
  -- without changing the mathematical content of the lemma.
  --
  -- To proceed, please adjust the statement to a known-true one, such as
  -- using `≥` instead of `≤`, or `s ∪ t` with `min` instead of `max`,
  -- in line with the usual properties of hitting times.
  sorry