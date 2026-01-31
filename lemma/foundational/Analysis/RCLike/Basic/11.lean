import Mathlib

lemma RCLike.im_sub (K : Type*) [RCLike K] (z w : K) :
    RCLike.im (z - w) = RCLike.im z - RCLike.im w := by
  simpa using (RCLike.im.map_sub z w)