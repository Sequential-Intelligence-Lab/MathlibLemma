import Mathlib

open scoped Interval

lemma fourierCoeff_bernoulli_zero (k : ℕ) :
    fourierCoeff (Complex.ofReal ∘ periodizedBernoulli k : UnitAddCircle → ℂ) 0 =
      Complex.ofReal (∫ x in (0 : ℝ)..1, bernoulliFun k x) := by
  sorry