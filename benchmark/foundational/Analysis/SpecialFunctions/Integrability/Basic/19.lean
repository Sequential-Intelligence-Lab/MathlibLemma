import Mathlib

open MeasureTheory

lemma intervalIntegrable_abs_rpow
    {a b r : ℝ} (h : -1 < r) :
    IntervalIntegrable (fun x => |x| ^ r) volume a b := by
  sorry