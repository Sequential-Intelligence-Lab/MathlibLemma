import Mathlib

open MeasureTheory
open Real
open Set

lemma intervalIntegrable_log_abs_sq {a b : ℝ}
    (h : (0 : ℝ) ∉ Icc a b) :
    IntervalIntegrable (fun x => (Real.log |x|)^2) volume a b := by
  sorry