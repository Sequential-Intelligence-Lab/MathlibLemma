import Mathlib

lemma bernoulli_neg_one (k : ℕ) :
    bernoulliFun k (-1) =
      (Polynomial.map (algebraMap ℚ ℝ) (Polynomial.bernoulli k)).eval (-1) := by
  -- `bernoulliFun` is defined as evaluation of the mapped Bernoulli polynomial.
  -- Unfolding the definition gives exactly the right-hand side.
  simpa [bernoulliFun]