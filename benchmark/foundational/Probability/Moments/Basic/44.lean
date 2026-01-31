import Mathlib

/-! ### Brainstormed lemmas about `moment` -/
lemma centralMoment_zero_of_not_integrable
    {Ω : Type*} {mΩ : MeasurableSpace Ω}
    {X : Ω → ℝ} {p : ℕ} {μ : MeasureTheory.Measure Ω}
    (m : ℝ)
    (hX : ¬ MeasureTheory.Integrable (fun ω ↦ (X ω - m) ^ p) μ) :
    ProbabilityTheory.centralMoment X p μ = 0 := by
  sorry

/-! ### Brainstormed lemmas about `mgf` basic properties -/