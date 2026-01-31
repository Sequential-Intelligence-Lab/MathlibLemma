import Mathlib

lemma ENNReal.rpow_add_rpow_le_three
    {p : ℝ} (a b c : ENNReal) (hp1 : 1 ≤ p) :
    (a ^ p + b ^ p + c ^ p) ^ (1 / p) ≤ a + b + c := by
  sorry