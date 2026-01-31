import Mathlib

universe u v

/-- Central moments are preserved under identical distribution. -/
lemma centralMoment_map_identDistrib
    {Ω : Type u} {Ω' : Type v}
    [MeasurableSpace Ω] [MeasurableSpace Ω']
    (μ : MeasureTheory.Measure Ω) (μ' : MeasureTheory.Measure Ω')
    {X : Ω → ℝ} {Y : Ω' → ℝ} {p : ℕ}
    (h : ProbabilityTheory.IdentDistrib X Y μ μ') :
    ProbabilityTheory.centralMoment X p μ =
      ProbabilityTheory.centralMoment Y p μ' := by
  sorry