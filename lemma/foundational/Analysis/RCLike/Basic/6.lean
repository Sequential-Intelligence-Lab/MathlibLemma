import Mathlib

lemma RCLike.re_ofReal (K : Type*) [RCLike K] (x : ℝ) :
    RCLike.re (RCLike.ofReal x : K) = x := by
  simpa using (RCLike.re_ofReal x : ℝ)