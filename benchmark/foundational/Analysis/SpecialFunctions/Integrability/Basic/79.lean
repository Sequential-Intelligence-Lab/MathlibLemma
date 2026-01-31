import Mathlib

open scoped Interval
open MeasureTheory

lemma intervalIntegrable_cpow_abs
    {a b : ℝ} {r : ℂ}
    (h : 0 ≤ r.re ∨ (0 : ℝ) ∉ [[a, b]]) :
    IntervalIntegrable (fun x : ℝ => ‖(x : ℂ) ^ r‖) volume a b := by
  sorry