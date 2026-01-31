import Mathlib

lemma RCLike.star_pow (K : Type*) [RCLike K] (z : K) (n : ℕ) :
    star (z ^ n) = (star z) ^ n := by
  sorry