import Mathlib

open MeasureTheory

lemma derivative_bound_integral_Icc {f : ℝ → ℝ} {a b : ℝ}
    (hab : a ≤ b)
    (hf : IntervalIntegrable (fun x => deriv f x) MeasureTheory.volume a b)
    (hC : ∀ x ∈ Set.Icc a b, ‖deriv f x‖ ≤ 1) :
    ‖f b - f a‖ ≤ b - a := by
  sorry