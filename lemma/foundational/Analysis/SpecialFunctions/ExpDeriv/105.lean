import Mathlib

theorem Real.exp_bound_sq' (x y : ℝ) (h : ‖y‖ ≤ 1) :
    ‖Real.exp (x + y)‖ ≤ Real.exp x * Real.exp 1 := by
  -- First, rewrite the absolute value of exp as exp itself, since exp is nonnegative
  have h_exp_nonneg : 0 ≤ Real.exp (x + y) :=
    le_of_lt (Real.exp_pos (x + y))
  have : ‖Real.exp (x + y)‖ = Real.exp (x + y) := by
    simpa using (abs_of_nonneg h_exp_nonneg)
  -- Use this identity to reduce the goal
  rw [this]
  -- From ‖y‖ ≤ 1, get y ≤ 1
  have hy_le : y ≤ 1 := (abs_le.mp h).right
  -- Hence x + y ≤ x + 1
  have hxy : x + y ≤ x + 1 := add_le_add_left hy_le x
  -- Apply monotonicity of exp and rewrite exp (x + 1)
  have hbound : Real.exp (x + y) ≤ Real.exp (x + 1) :=
    Real.exp_le_exp.mpr hxy
  -- Finish by rewriting exp (x + 1) as exp x * exp 1
  simpa [Real.exp_add] using hbound