import Mathlib

namespace NNReal

lemma rpow_add_rpow_le_three
    {p : ℝ} (a b c : ℝ≥0) (hp1 : 1 ≤ p) :
    ((a : ℝ) ^ p + (b : ℝ) ^ p + (c : ℝ) ^ p) ^ (1 / p) ≤
      (a : ℝ) + (b : ℝ) + (c : ℝ) := by
  sorry

end NNReal