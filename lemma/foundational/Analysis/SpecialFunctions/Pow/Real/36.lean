import Mathlib

lemma Real.rpow_natCast_strictAnti_of_lt_one {x : ℝ} (hx0 : 0 < x) (hx1 : x < 1) :
    StrictAnti fun n : ℕ => x ^ (n : ℝ) := by
  -- We'll prove `x ^ (n+1 : ℝ) < x ^ (n : ℝ)` for all `n`,
  -- then use `strictAnti_nat_of_succ_lt`.
  refine strictAnti_nat_of_succ_lt ?_
  intro n
  have hpos : 0 < x ^ (n : ℝ) := Real.rpow_pos_of_pos hx0 _
  -- multiply the inequality `x < 1` by the positive scalar `x^n`
  have hmul : x ^ (n : ℝ) * x < x ^ (n : ℝ) * 1 :=
    (mul_lt_mul_left hpos).2 hx1
  -- rewrite `x ^ (n+1)` as `x^n * x`
  have hn : ((n + 1 : ℕ) : ℝ) = (n : ℝ) + 1 := by
    norm_cast
  have h1 : x ^ (n + 1 : ℝ) = x ^ (n : ℝ) * x := by
    -- use rpow_add: x^(a+b) = x^a * x^b
    have : x ^ ((n : ℝ) + 1) = x ^ (n : ℝ) * x ^ (1 : ℝ) :=
      Real.rpow_add hx0 _ _
    -- simplify x^1 = x and adjust exponents
    simpa [hn, Real.rpow_one] using this
  -- finish
  simpa [h1] using hmul