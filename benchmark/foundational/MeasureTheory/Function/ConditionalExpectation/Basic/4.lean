import Mathlib

open MeasureTheory

lemma condExp_indicator_of_measurableSet {α E 𝕜} [RCLike 𝕜]
    {m m₀ : MeasurableSpace α} {μ : Measure α}
    [NormedAddCommGroup E] [NormedSpace ℝ E] [CompleteSpace E]
    {s : Set α} (hs : MeasurableSet[m] s) (f : α → E) :
    μ[s.indicator f | m] =ᵐ[μ] s.indicator (μ[f | m]) := by
  sorry