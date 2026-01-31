import Mathlib

open MeasureTheory

lemma intervalIntegrable_sign_mul
    {μ : Measure ℝ}
    {a b : ℝ} {f : ℝ → ℝ}
    (hf : IntervalIntegrable f μ a b) :
    IntervalIntegrable (fun x => Real.sign (f x) * f x) μ a b := by
  sorry