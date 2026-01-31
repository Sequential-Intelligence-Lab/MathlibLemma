import Mathlib

/-- If `f : ℝ → ℝ` is continuous and has finite limits at `±∞`, then `f` is uniformly
continuous. -/
lemma UniformContinuous_of_tendsto_atTop_atBot
    {f : ℝ → ℝ} {L₁ L₂ : ℝ}
    (h1 : Filter.Tendsto f Filter.atTop (nhds L₁))
    (h2 : Filter.Tendsto f Filter.atBot (nhds L₂)) :
    UniformContinuous f := by
  sorry