import Mathlib

/-! ### Brainstormed lemmas about `moment` -/

open scoped ProbabilityTheory

lemma mgf_symm_neg
    {Ω : Type*} [MeasurableSpace Ω] (μ : MeasureTheory.Measure Ω) (X : Ω → ℝ) :
    ProbabilityTheory.mgf (fun ω => -X ω) μ =
      fun t ↦ ProbabilityTheory.mgf (fun ω => X ω) μ (-t) := by
  sorry