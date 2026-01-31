import Mathlib

open MeasureTheory

lemma Lp.norm_posPart_add_norm_negPart_le
    {α : Type*} {m : MeasurableSpace α} {p : ENNReal}
    [Fact (1 ≤ p)] {μ : Measure α} (f : MeasureTheory.Lp ℝ p μ) :
    ‖MeasureTheory.Lp.posPart f‖ + ‖MeasureTheory.Lp.negPart f‖ ≤ 2 * ‖f‖ := by
  sorry