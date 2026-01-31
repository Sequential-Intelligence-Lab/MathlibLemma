import Mathlib

lemma Lp.negPart_neg {α : Type*} {m : MeasurableSpace α} {p : ENNReal}
    (μ : MeasureTheory.Measure α) (f : MeasureTheory.Lp ℝ p μ) :
    MeasureTheory.Lp.negPart (-f) = MeasureTheory.Lp.posPart f := by
  sorry