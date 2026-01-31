import Mathlib

open scoped Interval

open MeasureTheory

lemma bernoulliFun_integral_abs (k : ℕ) :
    IntegrableOn (fun x : ℝ => ‖bernoulliFun k x‖) (Set.Icc (0 : ℝ) 1) := by
  sorry