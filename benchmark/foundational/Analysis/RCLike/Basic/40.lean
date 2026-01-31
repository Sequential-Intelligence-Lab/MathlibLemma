import Mathlib

lemma RCLike.im_pow_two (K : Type*) [RCLike K] (z : K) :
    RCLike.im (z ^ 2) =
      2 * RCLike.re z * RCLike.im z := by
  sorry
