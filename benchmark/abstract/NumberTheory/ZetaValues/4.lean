import Mathlib

open Real

lemma bernoulliFun_hasDerivAt_real (k : ℕ) (x : ℝ) :
    HasDerivAt (bernoulliFun k) ((k : ℝ) * bernoulliFun (k - 1) x) x := by
  sorry