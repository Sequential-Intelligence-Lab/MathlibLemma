import Mathlib

theorem Complex.exp_real_im (x y : ℝ) :
    Complex.exp (x + Complex.I * y) =
      Real.exp x * (Real.cos y + Complex.I * Real.sin y) := by
  -- Identify exp (x : ℂ) with Real.exp x
  have hx : Complex.exp (x : ℂ) = Real.exp x := by
    simpa using Complex.exp_ofReal x
  -- Identify exp (I * y) with cos y + I * sin y
  have hy :
      Complex.exp (Complex.I * (y : ℂ)) =
        Real.cos y + Complex.I * Real.sin y := by
    -- Use Euler formula for `exp (y * I)` and commute the products
    simpa [mul_comm] using Complex.exp_mul_I y
  -- Use the exponential addition formula and substitute hx, hy
  calc
    Complex.exp (x + Complex.I * y)
        = Complex.exp (x : ℂ) * Complex.exp (Complex.I * (y : ℂ)) := by
          simpa using
            Complex.exp_add (x : ℂ) (Complex.I * (y : ℂ))
    _ = Real.exp x * (Real.cos y + Complex.I * Real.sin y) := by
          rw [hx, hy]