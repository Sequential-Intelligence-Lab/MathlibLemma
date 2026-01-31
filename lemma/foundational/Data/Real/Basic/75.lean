import Mathlib

lemma Real.nonneg_of_sq_eq_self {x : ℝ} (h : x ^ 2 = x) : 0 ≤ x := by
  -- Rewrite x ^ 2 as x * x
  have h' : x * x = x := by
    simpa [pow_two] using h
  -- Case split on x = 0
  by_cases hx : x = 0
  · -- If x = 0, the result is immediate
    simpa [hx]
  · -- If x ≠ 0, cancel x from x * x = x * 1 to get x = 1
    have hx1 : x = 1 := by
      -- Use cancellation on the left by nonzero x
      apply mul_left_cancel₀ hx
      simpa [one_mul] using h'
    -- Then x = 1, which is clearly nonnegative
    have h01 : (0 : ℝ) ≤ 1 := by norm_num
    simpa [hx1] using h01