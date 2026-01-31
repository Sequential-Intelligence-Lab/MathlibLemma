import Mathlib

lemma RCLike.isSelfAdjoint_I_mul_self (K : Type*) [RCLike K] (x : ℝ) :
    IsSelfAdjoint ((x : K) * RCLike.I) → x = 0 := by
  sorry
