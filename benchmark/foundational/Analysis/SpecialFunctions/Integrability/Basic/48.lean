import Mathlib

open MeasureTheory

lemma intervalIntegrable_sin_pow
    (μ : Measure ℝ) {a b : ℝ} (n : ℕ) :
    IntervalIntegrable (fun x => Real.sin x ^ n) μ a b := by
  sorry