import Mathlib

lemma RCLike.im_of_real_smul (K : Type*) [RCLike K] (x : ℝ) (z : K) :
    RCLike.im ((x : K) * z) = x * RCLike.im z := by
  sorry
