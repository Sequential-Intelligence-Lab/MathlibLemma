import Mathlib

lemma RCLike.re_conj_mul (K : Type*) [RCLike K] (z : K) :
    RCLike.re (star z * z) = ‖z‖ ^ 2 := by
  sorry