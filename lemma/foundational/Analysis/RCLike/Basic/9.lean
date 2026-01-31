import Mathlib

lemma RCLike.im_add (K : Type*) [RCLike K] (z w : K) :
    RCLike.im (z + w) = RCLike.im z + RCLike.im w := by
  simpa using (RCLike.im.map_add z w)