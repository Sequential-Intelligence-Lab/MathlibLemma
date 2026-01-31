import Mathlib

/-! ### Brainstormed lemmas about `moment` -/

open ProbabilityTheory MeasureTheory

lemma centralMoment_def'
    {Ω : Type*} {m : MeasurableSpace Ω} {X : Ω → ℝ}
    {p : ℕ} (μ : Measure Ω) :
    ProbabilityTheory.centralMoment X p μ =
      μ[fun ω ↦ (X ω - (μ[X])) ^ p] := by
  simpa [ProbabilityTheory.centralMoment]