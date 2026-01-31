import Mathlib

lemma pow_coprime_periodic {M : Type*} [Monoid M] {x : M} {m n k : ℕ}
    (hm : x ^ m = 1) (hk : Nat.Coprime m k) :
    x ^ (m * k + n) = x ^ n := by
  sorry
