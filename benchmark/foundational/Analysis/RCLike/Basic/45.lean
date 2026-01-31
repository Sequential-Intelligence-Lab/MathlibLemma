import Mathlib

lemma RCLike.re_div (K : Type*) [RCLike K] (z w : K) :
    RCLike.re (z / w) =
      (RCLike.re z * RCLike.re w + RCLike.im z * RCLike.im w) / RCLike.normSq w := by
  sorry
