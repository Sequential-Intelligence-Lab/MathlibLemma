import Mathlib

lemma Real.log_le_log_of_nonneg {x y : ℝ} (hx : 0 ≤ x) (hy : 0 ≤ y)
    (hxy : x ≤ y) (hx₀ : x ≠ 0) (hy₀ : y ≠ 0) :
    Real.log x ≤ Real.log y := by
  sorry
