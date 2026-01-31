import Mathlib

lemma Real.log_le_log_of_nonneg {x y : ℝ} (hx : 0 ≤ x) (hy : 0 ≤ y)
    (hxy : x ≤ y) (hx₀ : x ≠ 0) (hy₀ : y ≠ 0) :
    Real.log x ≤ Real.log y := by
  -- Convert nonneg + nonzero into strict positivity
  have hx₀' : 0 ≠ x := by
    simpa [eq_comm] using hx₀
  have hx_pos : 0 < x := lt_of_le_of_ne hx hx₀'
  -- Use monotonicity of log on (0, ∞)
  exact Real.log_le_log hx_pos hxy