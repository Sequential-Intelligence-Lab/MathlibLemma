import Mathlib

namespace RCLike

-- Dummy declaration of `conj` so that the lemma typechecks.
noncomputable def conj (K : Type*) [RCLike K] (x : K) : K := x

end RCLike

variable (K : Type*) [RCLike K]

noncomputable def rclikeConj (x : K) : K :=
  RCLike.conj K x

lemma RCLike.conj_bijective :
    Function.Bijective (rclikeConj K) := by
  sorry