import Mathlib

theorem Real.exp_involutive_on_log_image :
    Function.LeftInverse Real.log Real.exp := by
  -- Unfold the definition of `Function.LeftInverse` and use `Real.log_exp`.
  intro x
  simpa using Real.log_exp x