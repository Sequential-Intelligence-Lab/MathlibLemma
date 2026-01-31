import Mathlib

lemma bernoulliFun_comp_linear (k : ℕ) (a b : ℝ) :
    bernoulliFun k (a * b) =
      (Polynomial.map (algebraMap ℚ ℝ) (Polynomial.bernoulli k)).eval (a * b) := by
  sorry
