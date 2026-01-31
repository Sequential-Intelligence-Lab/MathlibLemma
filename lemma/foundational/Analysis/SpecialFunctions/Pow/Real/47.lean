import Mathlib

lemma Real.rpow_injective_of_pos {x : ℝ} (hx : 0 < x) (hx1 : x ≠ 1) :
    Function.Injective fun y : ℝ => x ^ y := by
  intro y₁ y₂ h
  -- Rewrite equality of rpow in terms of exp and log
  have h1 : Real.exp (y₁ * Real.log x) = Real.exp (y₂ * Real.log x) := by
    simpa [Real.rpow_def_of_pos hx] using h
  -- Use injectivity of exp to get equality of exponents
  have h2 : y₁ * Real.log x = y₂ * Real.log x :=
    Real.exp_injective h1
  -- Show that log x ≠ 0 using hx and hx1
  have hxlog : Real.log x ≠ 0 := by
    intro hlog
    -- Apply exp to both sides and simplify
    have h' : Real.exp (Real.log x) = Real.exp 0 := by
      simpa [hlog]
    have : x = 1 := by
      simpa [Real.exp_log hx, Real.exp_zero] using h'
    exact hx1 this
  -- Cancel the nonzero factor log x on the right
  exact mul_right_cancel₀ hxlog h2