import Mathlib

lemma RCLike.star_pow (K : Type*) [RCLike K] (z : K) (n : ℕ) :
    star (z ^ n) = (star z) ^ n := by
  -- This is a direct instance of the general `star_pow` lemma for any `StarSemiring`.
  simpa using (_root_.star_pow z n)