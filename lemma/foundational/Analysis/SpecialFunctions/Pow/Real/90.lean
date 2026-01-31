import Mathlib

lemma Real.rpow_log_rpow' (x y : ℝ) (hx : 0 < x) (hy : y ≠ 0) :
    (x ^ y) ^ (y⁻¹) = x := by
  -- Use the multiplicative rule for real powers to combine exponents
  have h₁ : (x ^ y) ^ (y⁻¹) = x ^ (y * y⁻¹) := by
    -- Real.rpow_mul : x ^ (a * b) = (x ^ a) ^ b  (for 0 ≤ x)
    simpa [Real.rpow_mul, mul_comm] using
      (Real.rpow_mul (show 0 ≤ x from le_of_lt hx) y y⁻¹).symm
  -- Simplify y * y⁻¹ to 1 using y ≠ 0
  have h₂ : x ^ (y * y⁻¹) = x ^ (1 : ℝ) := by
    simpa [hy]  -- simp knows y * y⁻¹ = 1 when y ≠ 0
  -- Now x ^ 1 = x
  simpa [h₁, h₂]