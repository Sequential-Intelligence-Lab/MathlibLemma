import Mathlib

open scoped ENNReal

open MeasureTheory

lemma Lp.compContinuous
    {α E F : Type*} {m : MeasurableSpace α}
    {p : ℝ≥0∞} {μ : Measure α}
    [NormedAddCommGroup E] [NormedAddCommGroup F]
    [Fact (1 ≤ p)]
    {g : E → F} (hg : LipschitzWith 1 g) (g0 : g 0 = 0) :
    Continuous
      (fun f : Lp E p μ =>
        LipschitzWith.compLp (E := E) (F := F) (p := p) (μ := μ) hg g0 f) := by
  sorry