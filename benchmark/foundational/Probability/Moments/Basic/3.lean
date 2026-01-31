import Mathlib

/-! ### Brainstormed lemmas about `moment` -/

open scoped BigOperators
open MeasureTheory

lemma moment_add_measure'
    {Ω : Type*} [MeasurableSpace Ω]
    (μ ν : Measure Ω)
    (X : Ω → ℝ) (p : ℕ)
    (hμ : MeasureTheory.Integrable (fun ω ↦ X ω ^ p) μ)
    (hν : MeasureTheory.Integrable (fun ω ↦ X ω ^ p) ν) :
    ProbabilityTheory.moment X p (μ + ν) =
      ProbabilityTheory.moment X p μ + ProbabilityTheory.moment X p ν := by
  sorry