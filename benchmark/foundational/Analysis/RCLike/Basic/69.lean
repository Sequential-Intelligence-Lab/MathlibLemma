import Mathlib

variable (K : Type*) [RCLike K]

/-- Conjugation on an `RCLike` type. -/
def conj (z : K) : K := z  -- dummy definition; just to make the lemma type-check

lemma RCLike.conj_map_sub (z w : K) :
    conj K (z - w) = conj K z - conj K w := by
  sorry