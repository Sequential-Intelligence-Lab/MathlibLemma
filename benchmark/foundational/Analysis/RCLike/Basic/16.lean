import Mathlib

section

variable (K : Type*) [RCLike K]

/-- Conjugation as a function on an `RCLike` type.  This is just a placeholder. -/
def rclikeConj (x : K) : K :=
  x

namespace RCLike

lemma conj_involutive (K : Type*) [RCLike K] :
    Function.Involutive (rclikeConj K) := by
  sorry

end RCLike

end