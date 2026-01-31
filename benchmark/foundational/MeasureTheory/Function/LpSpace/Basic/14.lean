import Mathlib

open scoped ENNReal

open MeasureTheory

lemma Lp.compMeasurePreserving_isometry
    {α β E : Type*} [NormedAddCommGroup E]
    {mα : MeasurableSpace α} {mβ : MeasurableSpace β}
    {p : ℝ≥0∞} {μα : Measure α} {μβ : Measure β}
    (f : α → β) (hf : MeasurePreserving f μα μβ) [Fact (1 ≤ p)] :
    Isometry
      (MeasureTheory.Lp.compMeasurePreserving
        (E := E) (p := p) f hf) := by
  sorry