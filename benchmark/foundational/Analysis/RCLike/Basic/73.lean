import Mathlib

lemma RCLike.isSelfAdjoint_ofReal (K : Type*) [RCLike K] (x : ℝ) :
    IsSelfAdjoint (RCLike.ofReal x : K) := by
  sorry
