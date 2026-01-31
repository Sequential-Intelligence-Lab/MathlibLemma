import Mathlib

lemma RCLike.im_div (K : Type*) [RCLike K] (z w : K) :
    RCLike.im (z / w) =
      (RCLike.im z * RCLike.re w - RCLike.re z * RCLike.im w) / RCLike.normSq w := by
  sorry
