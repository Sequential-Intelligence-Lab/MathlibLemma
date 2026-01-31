import Mathlib

lemma RCLike.im_ofReal (K : Type*) [RCLike K] (x : ℝ) :
    RCLike.im (RCLike.ofReal x : K) = 0 := by
  simpa using (RCLike.ofReal_im (x : ℝ) : RCLike.im (RCLike.ofReal x : K) = 0)