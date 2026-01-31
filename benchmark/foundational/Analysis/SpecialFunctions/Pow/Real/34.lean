import Mathlib

lemma Real.rpow_natCast_lt_rpow_natCast {x : ℝ} (hx : 1 < x) {m n : ℕ} (hmn : m < n) :
    x ^ (m : ℝ) < x ^ (n : ℝ) := by
  sorry
