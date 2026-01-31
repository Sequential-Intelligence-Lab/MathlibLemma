import Mathlib

lemma RCLike.im_conj_eq_neg_im (K : Type*) [RCLike K] (z : K) :
    RCLike.im (star z) = - RCLike.im z := by
  simpa using (RCLike.im_star z)