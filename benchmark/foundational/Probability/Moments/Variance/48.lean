import Mathlib

lemma variance_comp_mul {Ω : Type*} {mΩ : MeasurableSpace Ω}
    (μ : MeasureTheory.Measure Ω) (c : ℝ) (X : Ω → ℝ) :
    ProbabilityTheory.variance (fun ω => c * X ω) μ =
      c ^ 2 * ProbabilityTheory.variance X μ := by
  sorry