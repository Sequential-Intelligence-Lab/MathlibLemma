import Mathlib

lemma RCLike.conj_eq_iff_re_im (K : Type*) [RCLike K] (z : K) :
    star z = z ↔ RCLike.im z = 0 := by
  sorry