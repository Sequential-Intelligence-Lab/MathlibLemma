import Mathlib

lemma RCLike.im_mul_conj (K : Type*) [RCLike K] (z : K) :
    RCLike.im (z * star z) = 0 := by
  sorry