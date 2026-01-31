import Mathlib

open scoped Real

namespace NNReal

-- Monotonicity of rpow (real exponent) in the exponent for base ≥ 1
lemma rpow_le_rpow_of_le_right
    {a : ℝ≥0} {b c : ℝ} (h : b ≤ c) (ha : 1 ≤ a) :
    a ^ b ≤ a ^ c := by
  sorry

-- Version where the exponent is an ℝ≥0 coerced to ℝ
lemma rpow_le_rpow_of_le_right_coe
    {a b c : ℝ≥0} (h : b ≤ c) (ha : 1 ≤ a) :
    a ^ (b : ℝ) ≤ a ^ (c : ℝ) := by
  sorry

-- Version with NNReal.toReal as exponent for rpow
lemma rpow_le_rpow_of_le_right_toReal
    {a b c : ℝ≥0} (h : b ≤ c) (ha : 1 ≤ a) :
    a ^ (NNReal.toReal b) ≤ a ^ (NNReal.toReal c) := by
  sorry

end NNReal