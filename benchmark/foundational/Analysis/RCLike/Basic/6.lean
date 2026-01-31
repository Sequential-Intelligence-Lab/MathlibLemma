import Mathlib

lemma RCLike.re_ofReal (K : Type*) [RCLike K] (x : ℝ) :
    RCLike.re (RCLike.ofReal x : K) = x := by
  sorry
