import Mathlib

open MeasureTheory

lemma periodizedBernoulli_integral (k : ℕ) (hk : k ≠ 0) :
    ∫ x : UnitAddCircle, periodizedBernoulli k x = 0 := by
  sorry