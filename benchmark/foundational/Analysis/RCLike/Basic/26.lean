import Mathlib

lemma RCLike.re_mul_self_add_im_mul_self (K : Type*) [RCLike K] (z : K) :
    RCLike.re z * RCLike.re z + RCLike.im z * RCLike.im z = RCLike.normSq z := by
  sorry
