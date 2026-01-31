import Mathlib

lemma sqrt_abs (x : ℝ) :
    √|x| = √(x ^ 2) := by
  /-
  This statement is false over ℝ, so it cannot be proved in Lean.

  Counterexample: take x = 4.
  Then
    √|4| = √4 = 2
  while
    √(4^2) = √16 = 4.
  Thus √|x| ≠ √(x^2) in general.

  The correct identity available in mathlib is:

    Real.sqrt_sq (x : ℝ) : √(x ^ 2) = |x|

  i.e. sqrt of the square is the absolute value, not the other way around.
  Because the lemma as stated is mathematically incorrect, there is no
  error-free Lean proof of it.
  -/
  admit