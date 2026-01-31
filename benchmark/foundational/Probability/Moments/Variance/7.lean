import Mathlib

open MeasureTheory ProbabilityTheory

lemma variance_const (Ω : Type*) [MeasurableSpace Ω]
    (μ : Measure Ω) (c : ℝ) :
    ProbabilityTheory.variance (fun _ : Ω => c) μ = 0 := by
  sorry