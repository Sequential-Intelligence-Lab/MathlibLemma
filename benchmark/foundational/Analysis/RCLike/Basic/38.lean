import Mathlib

lemma RCLike.im_conj_mul (K : Type*) [RCLike K] (z : K) :
    RCLike.im (star z * z) = 0 := by
  sorry