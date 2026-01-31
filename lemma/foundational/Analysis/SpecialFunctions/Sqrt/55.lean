import Mathlib

lemma sqrt_sq_le (x : ℝ) :
    (√(x ^ 2)) ≤ |x| := by
  -- First, get the equality for the nonnegative number |x|
  have h₁ : √(|x| ^ 2) = |x| := by
    -- Real.sqrt_sq expects a proof that its argument is nonnegative
    simpa using Real.sqrt_sq (abs_nonneg x)
  -- Relate |x|^2 and x^2
  have h₂ : |x| ^ 2 = x ^ 2 := by
    -- Use the identity |x| * |x| = x * x
    simpa [pow_two, abs_mul_self] 
  -- Rewrite √(x^2) using these equalities
  have h : √(x ^ 2) = |x| := by
    -- change the argument inside the square root from x^2 to |x|^2
    simpa [h₂] using h₁
  -- Turn equality into ≤
  exact le_of_eq h