import Mathlib

/-! ### Brainstormed lemmas about `moment` -/

open MeasureTheory
open ProbabilityTheory

lemma moment_zero_of_not_integrable
    {Ω : Type*} [MeasurableSpace Ω] (μ : Measure Ω) (X : Ω → ℝ) (p : ℕ)
    (hX : ¬ Integrable (fun ω ↦ X ω ^ p) μ) :
    moment X p μ = 0 := by
  sorry