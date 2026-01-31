import Mathlib

lemma Real.log_natCast_mul (m n : ℕ) (hm : m ≠ 0) (hn : n ≠ 0) :
    Real.log (m * n : ℝ) = Real.log (m : ℝ) + Real.log (n : ℝ) := by
  sorry
