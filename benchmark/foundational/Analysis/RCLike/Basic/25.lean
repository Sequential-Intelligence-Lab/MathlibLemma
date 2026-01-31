import Mathlib

lemma RCLike.im_smul_real {K E : Type*} [RCLike K] [NormedAddCommGroup E] [NormedSpace K E]
    (x : ℝ) (z : K) :
    RCLike.im (x • z : K) = x * RCLike.im z := by
  sorry
