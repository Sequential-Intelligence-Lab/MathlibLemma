import Mathlib

lemma Int.gcd_dvd_iff' (a b c : ℤ) :
    (Int.gcd a b : ℤ) ∣ c ↔ ∃ x y : ℤ, c = a * x + b * y := by
  sorry