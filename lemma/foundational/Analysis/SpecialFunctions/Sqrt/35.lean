import Mathlib

lemma sqrt_induction_ineq {a b : ℝ} (h0 : 0 ≤ a) (h1 : 0 ≤ b) :
    √(a + b) ≤ √a + √b := by
  -- Both sides are nonnegative
  have h_left : 0 ≤ √(a + b) := Real.sqrt_nonneg _
  have h_right : 0 ≤ √a + √b :=
    add_nonneg (Real.sqrt_nonneg _) (Real.sqrt_nonneg _)

  -- Nonnegativity of a + b
  have h_ab : 0 ≤ a + b := add_nonneg h0 h1

  -- Compute (√(a + b))^2 = a + b
  have hL : (√(a + b))^2 = a + b := Real.sq_sqrt h_ab

  -- Compute (√a)^2 = a and (√b)^2 = b
  have hRa : (√a)^2 = a := Real.sq_sqrt h0
  have hRb : (√b)^2 = b := Real.sq_sqrt h1

  -- Expand (√a + √b)^2
  have hR : (√a + √b)^2 = a + b + 2 * √a * √b := by
    have h : (√a + √b)^2 = (√a)^2 + 2 * √a * √b + (√b)^2 := by
      ring
    -- Now rewrite using hRa and hRb
    calc
      (√a + √b)^2
          = (√a)^2 + 2 * √a * √b + (√b)^2 := h
      _ = a + b + 2 * √a * √b := by
          simp [hRa, hRb, add_comm, add_left_comm, add_assoc,
                mul_comm, mul_left_comm, mul_assoc]

  -- Show 0 ≤ 2 * √a * √b
  have h_mul_nonneg : 0 ≤ 2 * √a * √b := by
    have h_sqrt_a : 0 ≤ √a := Real.sqrt_nonneg _
    have h_sqrt_b : 0 ≤ √b := Real.sqrt_nonneg _
    have h_prod : 0 ≤ √a * √b := mul_nonneg h_sqrt_a h_sqrt_b
    have h_two_prod : 0 ≤ (2 : ℝ) * (√a * √b) :=
      mul_nonneg (by norm_num) h_prod
    simpa [mul_comm, mul_left_comm, mul_assoc] using h_two_prod

  -- Hence a + b ≤ a + b + 2 * √a * √b
  have h_base : a + b ≤ a + b + 2 * √a * √b :=
    le_add_of_nonneg_right h_mul_nonneg

  -- Convert to inequality between squares
  have h_sq : (√(a + b))^2 ≤ (√a + √b)^2 := by
    simpa [hL, hR] using h_base

  -- From inequality on squares, get inequality on absolute values
  have h_abs : |√(a + b)| ≤ |√a + √b| := (sq_le_sq).mp h_sq

  -- Remove absolute values using nonnegativity
  have : √(a + b) ≤ √a + √b := by
    simpa [abs_of_nonneg h_left, abs_of_nonneg h_right] using h_abs

  exact this