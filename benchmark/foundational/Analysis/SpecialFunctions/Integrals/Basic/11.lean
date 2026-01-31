import Mathlib

open Real
open scoped BigOperators

lemma integral_inv_pow (a b : ℝ) (n : ℕ) (hn : 1 < n) (h0 : (0 : ℝ) ∉ Set.Icc a b) :
    ∫ x in a..b, x^(- (n : ℤ)) =
      (a^(1 - n) - b^(1 - n)) / (n - 1) := by
  sorry