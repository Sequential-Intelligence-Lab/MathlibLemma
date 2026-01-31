import Mathlib

lemma evariance_const (Ω : Type*) {mΩ : MeasurableSpace Ω}
    (μ : MeasureTheory.Measure Ω) (c : ℝ) :
    ProbabilityTheory.evariance (fun _ : Ω => c) μ = 0 := by
  sorry