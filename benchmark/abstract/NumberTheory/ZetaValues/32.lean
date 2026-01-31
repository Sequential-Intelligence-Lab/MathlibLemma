import Mathlib

lemma bernoulliFun_int (k : ℕ) (m : ℤ) :
    bernoulliFun k m =
      (Polynomial.map (algebraMap ℚ ℝ) (Polynomial.bernoulli k)).eval (m : ℝ) := by
  sorry