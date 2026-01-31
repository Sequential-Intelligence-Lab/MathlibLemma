import Mathlib

lemma sqrt_real_mul_self (x : ℝ) :
    Real.sqrt (x * x) = |x| := by
  -- First, use the standard lemma for the nonnegative number |x|
  have h : Real.sqrt (|x| * |x|) = |x| :=
    Real.sqrt_mul_self (abs_nonneg x)
  -- Relate |x| * |x| to x * x via sq_abs
  have hsq : |x| * |x| = x * x := by
    simpa [pow_two] using Real.sq_abs x
  -- Rewrite the radicand and conclude
  simpa [hsq] using h