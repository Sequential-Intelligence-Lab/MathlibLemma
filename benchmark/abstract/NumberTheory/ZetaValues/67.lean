import Mathlib

lemma bernoulliFun_intervalIntegrable (k : ℕ) (a b : ℝ) :
    IntervalIntegrable (fun x : ℝ => bernoulliFun k x) MeasureTheory.volume a b := by
  sorry
