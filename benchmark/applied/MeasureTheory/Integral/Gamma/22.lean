import Mathlib

open Complex MeasureTheory

namespace Complex

/-- Non-negativity a.e. of the complex Gamma kernel. -/
lemma aestronglyMeasurable_norm_rpow_mul_exp_neg_rpow
    {p q : ℝ} [MeasurableSpace ℂ] (μ : Measure ℂ) :
    AEStronglyMeasurable (fun x : ℂ => ‖x‖ ^ q * Real.exp (-‖x‖ ^ p)) μ := by
  sorry

end Complex