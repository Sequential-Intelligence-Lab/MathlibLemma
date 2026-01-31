import Mathlib

lemma Real.rpow_half (x : ℝ) (hx : 0 ≤ x) : x ^ (1 / 2 : ℝ) = √x := by
  -- `Real.sqrt_eq_rpow` states `√x = x ^ (1 / 2 : ℝ)`.
  -- We just use it and reverse the equality.
  simpa using (Real.sqrt_eq_rpow (x := x)).symm