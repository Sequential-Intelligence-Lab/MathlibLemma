import Mathlib

lemma Int.gcd_dvd_iff' (a b c : ℤ) :
    (Int.gcd a b : ℤ) ∣ c ↔ ∃ x y : ℤ, c = a * x + b * y := by
  constructor
  · intro h
    rcases h with ⟨k, hk⟩
    refine ⟨Int.gcdA a b * k, Int.gcdB a b * k, ?_⟩
    subst hk
    have hgcd :
        (Int.gcd a b : ℤ) =
          a * Int.gcdA a b + b * Int.gcdB a b :=
      Int.gcd_eq_gcd_ab a b
    calc
      (Int.gcd a b : ℤ) * k
          = (a * Int.gcdA a b + b * Int.gcdB a b) * k := by
                simpa [hgcd]
      _ = a * (Int.gcdA a b * k) + b * (Int.gcdB a b * k) := by
                simp [add_mul, mul_assoc]
  · intro h
    rcases h with ⟨x, y, hc⟩
    have h1 : (Int.gcd a b : ℤ) ∣ a * x :=
      dvd_mul_of_dvd_left (Int.gcd_dvd_left a b) x
    have h2 : (Int.gcd a b : ℤ) ∣ b * y :=
      dvd_mul_of_dvd_left (Int.gcd_dvd_right a b) y
    have h3 : (Int.gcd a b : ℤ) ∣ a * x + b * y :=
      dvd_add h1 h2
    simpa [hc] using h3