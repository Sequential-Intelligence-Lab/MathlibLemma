import Mathlib

open Set MeasureTheory

lemma intervalIntegrable_zpow_of_neg
    (μ : Measure ℝ) {a b : ℝ} {n : ℤ}
    (hneg : n < 0) (h0 : (0 : ℝ) ∉ Icc a b) :
    IntervalIntegrable (fun x => x ^ n) μ a b := by
  sorry