import Mathlib

lemma RCLike.normSq_eq_mul_conj (K : Type*) [RCLike K] (z : K) :
    (RCLike.normSq z : K) = z * star z := by
  sorry