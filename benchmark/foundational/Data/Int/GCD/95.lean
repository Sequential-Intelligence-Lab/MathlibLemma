import Mathlib

lemma Int.gcd_eq_gcd_mul_right {a b c : ℤ} (hc : c ∣ a) (hc' : c ∣ b) :
    Int.gcd a b = |c| * Int.gcd (a / c) (b / c) := by
  sorry
