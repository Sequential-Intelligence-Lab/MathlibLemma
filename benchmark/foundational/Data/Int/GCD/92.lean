import Mathlib

lemma Int.gcd_mul_left_cancel {a b c : ℤ} (hc : c ≠ 0) :
    Int.gcd (c * a) (c * b) = |c| * Int.gcd a b := by
  sorry
