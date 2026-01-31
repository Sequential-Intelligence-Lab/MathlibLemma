import Mathlib

lemma RCLike.re_mul_conj (K : Type*) [RCLike K] (z : K) :
    RCLike.re (z * star z) = ‖z‖ ^ 2 := by
  sorry