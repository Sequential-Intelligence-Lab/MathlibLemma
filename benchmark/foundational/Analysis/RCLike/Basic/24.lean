import Mathlib

lemma RCLike.re_smul_real {K E : Type*} [RCLike K] [NormedAddCommGroup E] [NormedSpace K E]
    (x : ℝ) (z : K) :
    RCLike.re (x • z : K) = x * RCLike.re z := by
  sorry
