import Mathlib

/-! ### Brainstormed lemmas about `moment` -/

open MeasureTheory ProbabilityTheory

lemma chernoff_lower_tail_mgf
    {Ω : Type*} [m : MeasurableSpace Ω] (μ : Measure Ω)
    [MeasureTheory.IsFiniteMeasure μ]
    (X : Ω → ℝ) (ε t : ℝ) (ht : t ≤ 0)
    (h_int : MeasureTheory.Integrable (fun ω ↦ Real.exp (t * X ω)) μ) :
    μ.real {ω | X ω ≤ ε} ≤
      Real.exp (-t * ε) * ProbabilityTheory.mgf X μ t := by
  sorry

/-! ### Misc technical lemmas (exp and integrability) -/