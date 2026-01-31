import Mathlib

lemma RCLike.conj_injective (K : Type*) [RCLike K]
    (conj : K → K) :
    Function.Injective conj := by
  sorry