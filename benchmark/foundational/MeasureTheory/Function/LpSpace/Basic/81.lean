import Mathlib

open MeasureTheory

lemma Lp.eLpNorm_star_eq
    {α : Type*} {m : MeasurableSpace α}
    {p : ENNReal} {μ : Measure α}
    (f : MeasureTheory.Lp ℂ p μ) :
    MeasureTheory.eLpNorm (Star.star f) p μ =
      MeasureTheory.eLpNorm f p μ := by
  sorry