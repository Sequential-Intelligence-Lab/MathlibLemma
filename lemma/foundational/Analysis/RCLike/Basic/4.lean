import Mathlib

lemma RCLike.re_star (K : Type*) [RCLike K] (z : K) :
    RCLike.re (star z) = RCLike.re z := by
  simpa