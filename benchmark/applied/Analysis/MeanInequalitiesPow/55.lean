import Mathlib

open Real

namespace NNReal

lemma add_rpow_le_rpow_add_three'
    {p : ℝ} (a b c : ℝ≥0) (hp1 : 1 ≤ p) :
    (a : ℝ) ^ p + (b : ℝ) ^ p + (c : ℝ) ^ p ≤ ((a + b + c : ℝ≥0) : ℝ) ^ p := by
  sorry

end NNReal