import Mathlib

open scoped ENNReal

lemma Lp.posPart_neg
    {α : Type*} [MeasurableSpace α] {p : ℝ≥0∞}
    (μ : MeasureTheory.Measure α) (f : MeasureTheory.Lp ℝ p μ) :
    MeasureTheory.Lp.posPart (-f) = MeasureTheory.Lp.negPart f := by
  sorry