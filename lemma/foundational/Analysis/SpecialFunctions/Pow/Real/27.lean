import Mathlib

lemma Real.rpow_eq_iff_eq_log {x y z : ℝ} (hx : 0 < x) (hy : 0 < y) :
    x ^ z = y ↔ z * log x = log y := by
  constructor
  · intro h
    -- Take log on both sides and use log_rpow
    have hlog : log (x ^ z) = log y := by
      simpa [h]
    simpa [Real.log_rpow hx] using hlog
  · intro h
    -- Exponentiate both sides
    have hexp : Real.exp (z * log x) = Real.exp (log y) := by
      simpa using congrArg Real.exp h
    -- Simplify right-hand side using exp_log
    have h' : Real.exp (z * log x) = y := by
      simpa [Real.exp_log hy] using hexp
    -- Rewrite with the multiplication order matching rpow_def_of_pos
    have h'' : Real.exp (log x * z) = y := by
      simpa [mul_comm] using h'
    -- Rewrite left-hand side as x ^ z using rpow_def_of_pos
    simpa [Real.rpow_def_of_pos hx] using h''