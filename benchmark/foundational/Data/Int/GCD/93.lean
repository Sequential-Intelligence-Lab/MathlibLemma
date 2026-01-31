import Mathlib

lemma Int.gcd_mul_right_cancel {a b c : ℤ} (hc : c ≠ 0) :
    Int.gcd (a * c) (b * c) = |c| * Int.gcd a b := by
  sorry
