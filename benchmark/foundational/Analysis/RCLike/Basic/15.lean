import Mathlib

lemma RCLike.im_conj_eq_neg_im (K : Type*) [RCLike K] (z : K) :
    RCLike.im (star z) = - RCLike.im z := by
  sorry