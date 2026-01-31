import Mathlib

lemma integral_pow_comp (a b : ℝ) (n : ℕ) :
    ∫ x in a..b, (x^n)^2 = (b^(2*n + 1) - a^(2*n + 1)) / (2*n + 1) := by
  -- Rewrite (x^n)^2 as x^(2 * n)
  have hfun : (fun x : ℝ => (x^n)^2) = fun x : ℝ => x^(2 * n) := by
    funext x
    -- (x^n)^2 = x^(n*2) = x^(2*n)
    simpa [pow_mul, Nat.mul_comm]
  -- Apply the standard integral formula for powers
  simpa [hfun] using
    (intervalIntegral.integral_pow (a := a) (b := b) (n := 2 * n))