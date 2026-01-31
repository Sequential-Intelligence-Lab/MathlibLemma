import Mathlib

lemma bernoulli_neg_one (k : ℕ) :
    bernoulliFun k (-1) =
      (Polynomial.map (algebraMap ℚ ℝ) (Polynomial.bernoulli k)).eval (-1) := by
  sorry
