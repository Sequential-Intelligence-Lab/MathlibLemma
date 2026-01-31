import Mathlib

open scoped ENNReal
open MeasureTheory

lemma Lp.compMeasurePreservingₗ_isometry
    {α β E 𝕜 : Type*}
    [NormedAddCommGroup E] [NormedField 𝕜] [NormedSpace 𝕜 E]
    {mα : MeasurableSpace α} {mβ : MeasurableSpace β}
    {p : ℝ≥0∞} {μα : Measure α} {μβ : Measure β}
    (f : α → β) (hf : MeasurePreserving f μα μβ) [Fact (1 ≤ p)] :
    Isometry
      (Lp.compMeasurePreservingₗ
        (α := α) (β := β)
        (μ := μα) (μb := μβ)
        (𝕜 := 𝕜) (E := E) (p := p) f hf) := by
  sorry