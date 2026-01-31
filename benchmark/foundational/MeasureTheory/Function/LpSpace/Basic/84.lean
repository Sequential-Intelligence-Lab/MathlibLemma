import Mathlib

open MeasureTheory

lemma Lp.star_involutive'
    {α R : Type*} {m : MeasurableSpace α}
    {p : ENNReal} (μ : Measure α)
    [NormedAddCommGroup R] [StarAddMonoid R] [NormedStarGroup R] :
    Function.Involutive
      (star : Lp R p μ → Lp R p μ) := by
  sorry