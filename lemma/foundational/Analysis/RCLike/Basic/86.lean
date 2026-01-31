import Mathlib

lemma RCLike.im_normSq (K : Type*) [RCLike K] (z : K) :
    (RCLike.im (RCLike.normSq z : K)) = 0 := by
  simpa using (RCLike.im_normSq (K := K) z)