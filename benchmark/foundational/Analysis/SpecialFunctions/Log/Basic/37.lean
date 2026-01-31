import Mathlib

lemma Real.log_div_ge_log (x : ℝ) {y : ℝ} (hy : 1 ≤ y) (hx : 0 < x) :
    Real.log (x / y) ≥ Real.log x - Real.log y := by
  sorry
