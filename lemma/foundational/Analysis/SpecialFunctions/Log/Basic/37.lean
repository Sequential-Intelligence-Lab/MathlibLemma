import Mathlib

lemma Real.log_div_ge_log (x : ℝ) {y : ℝ} (hy : 1 ≤ y) (hx : 0 < x) :
    Real.log (x / y) ≥ Real.log x - Real.log y := by
  -- From 1 ≤ y we get y > 0
  have hy_pos : 0 < y := lt_of_lt_of_le (show (0 : ℝ) < 1 by norm_num) hy
  -- Convert strict positivity to non-zeroness for use with log_div
  have hx_ne : x ≠ 0 := ne_of_gt hx
  have hy_ne : y ≠ 0 := ne_of_gt hy_pos
  -- Use the standard log division formula: log (x / y) = log x - log y
  have h := Real.log_div hx_ne hy_ne
  -- Rewrite the goal using this equality
  simpa [h]