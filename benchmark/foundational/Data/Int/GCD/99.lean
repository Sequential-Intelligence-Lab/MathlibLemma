import Mathlib

lemma pow_lcm_eq_one {M : Type*} [Monoid M] {x : M} {m n : ℕ}
    (hm : x ^ m = 1) (hn : x ^ n = 1) :
    x ^ Nat.lcm m n = 1 := by
  sorry
