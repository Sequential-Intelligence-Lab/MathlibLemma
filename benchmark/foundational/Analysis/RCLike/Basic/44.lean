import Mathlib

lemma RCLike.im_inv (K : Type*) [RCLike K] (z : K) :
    RCLike.im z⁻¹ = - RCLike.im z / RCLike.normSq z := by
  sorry
