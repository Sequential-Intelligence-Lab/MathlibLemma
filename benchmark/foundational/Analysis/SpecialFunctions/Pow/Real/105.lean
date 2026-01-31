import Mathlib

lemma Real.rpow_div_natCast (x : ℝ) (y : ℝ) (n : ℕ) :
    x ^ (y / n) = x ^ (y * (n⁻¹ : ℝ)) := by
  sorry
