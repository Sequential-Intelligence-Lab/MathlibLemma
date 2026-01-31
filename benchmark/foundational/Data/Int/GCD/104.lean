import Mathlib

lemma pow_eq_one_mod {M : Type*} [Monoid M] {x : M} {m n : ℕ}
    (hm : x ^ m = 1) (hdiv : m ∣ n) :
    x ^ n = 1 := by
  sorry
