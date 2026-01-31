import Mathlib

lemma pow_lcm_eq_one {M : Type*} [Monoid M] {x : M} {m n : ℕ}
    (hm : x ^ m = 1) (hn : x ^ n = 1) :
    x ^ Nat.lcm m n = 1 := by
  -- We only need that m divides lcm m n
  rcases Nat.dvd_lcm_left m n with ⟨a, ha⟩
  -- Rewrite the exponent using the multiple form
  -- and simplify using hm : x^m = 1
  simp [ha, pow_mul, hm]