import Mathlib

lemma RCLike.norm_eq_sqrt_normSq (K : Type*) [RCLike K] (z : K) :
    ‖z‖ = Real.sqrt (RCLike.normSq z) := by
  sorry
