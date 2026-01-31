import Mathlib

lemma ENNReal.add_rpow_le_rpow_add_three
    {p : ℝ} (a b c : ENNReal) (hp1 : 1 ≤ p) :
    a ^ p + b ^ p + c ^ p ≤ (a + b + c) ^ p := by
  sorry