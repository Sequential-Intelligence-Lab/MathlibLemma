import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Real.log_mul_le_add_log_add_log {x y : ℝ} (hx : 0 < x) (hy : 0 < y) :
    Real.log (x * y) ≤ Real.log x + Real.log y := by
  -- Use the logarithm property for multiplication: ln(xy) = ln(x) + ln(y)
  have h : Real.log (x * y) = Real.log x + Real.log y := Real.log_mul (by positivity) (by positivity)
  -- Substitute the property into the inequality and simplify
  simp_all only [h, le_refl, zero_add]
  -- Since ln(2) is a positive constant, the inequality 0 ≤ ln(2) is always true
  <;> linarith [Real.log_nonneg (by positivity : (0 : ℝ) < 2)]