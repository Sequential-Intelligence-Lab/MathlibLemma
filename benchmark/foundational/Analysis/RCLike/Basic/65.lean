import Mathlib

lemma RCLike.conj_div'
    (K : Type*) [RCLike K] (conj : K → K) (z w : K) :
    conj (z / w) = conj z / conj w := by
  sorry