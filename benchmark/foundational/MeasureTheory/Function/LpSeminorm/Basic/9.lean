import Mathlib

open scoped ENNReal

open MeasureTheory

lemma eLpNorm_eq_of_eq_on
    {α E} [MeasurableSpace α]
    [NormedAddCommGroup E] [NormedSpace ℝ E]
    [MeasurableSpace E] [BorelSpace E]
    [ContinuousENorm E]
    {μ : MeasureTheory.Measure α} {f g : α → E} {p : ℝ≥0∞} {s : Set α}
    (hset : μ sᶜ = 0) (hfg : ∀ x ∈ s, f x = g x) :
    eLpNorm f p μ = eLpNorm g p μ := by
  sorry