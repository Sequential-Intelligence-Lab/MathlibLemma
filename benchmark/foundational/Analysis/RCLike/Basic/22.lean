import Mathlib

lemma RCLike.re_of_real_smul (K : Type*) [RCLike K] (x : ℝ) (z : K) :
    RCLike.re ((x : K) * z) = x * RCLike.re z := by
  sorry
