import Mathlib

open scoped BigOperators ENNReal

open MeasureTheory

lemma MemLp.sum_finite
    {ι α E} [Fintype ι] [MeasurableSpace α]
    [MeasurableSpace E] [NormedAddCommGroup E] [NormedSpace ℝ E] [BorelSpace E]
    {μ : Measure α} {p : ℝ≥0∞} {f : ι → α → E}
    (hf : ∀ i, MemLp (f i) p μ) :
    MemLp (fun x => ∑ i, f i x) p μ := by
  sorry