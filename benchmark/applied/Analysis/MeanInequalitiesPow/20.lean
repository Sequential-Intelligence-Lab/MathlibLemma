import Mathlib

lemma Real.rpow_add_rpow_le_three {p : ℝ} {a b c : ℝ}
    (ha : 0 ≤ a) (hb : 0 ≤ b) (hc : 0 ≤ c) (hp1 : 1 ≤ p) :
    (a ^ p + b ^ p + c ^ p) ^ (1 / p) ≤ a + b + c := by
  sorry
