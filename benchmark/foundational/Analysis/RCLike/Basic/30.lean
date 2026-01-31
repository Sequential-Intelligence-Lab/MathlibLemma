import Mathlib

lemma RCLike.normSq_ofReal (K : Type*) [RCLike K] (x : ℝ) :
    RCLike.normSq (RCLike.ofReal x : K) = x * x := by
  sorry
