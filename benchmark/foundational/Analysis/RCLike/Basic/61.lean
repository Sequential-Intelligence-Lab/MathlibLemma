import Mathlib

-- Conjugation over an RCLike type
lemma rclike_conj_add {K : Type*} [RCLike K] (z w : K) :
    star (z + w) = star z + star w := by
  sorry

-- Conjugation over ℂ using the star operation
lemma complex_conj_add (z w : ℂ) :
    star (z + w) = star z + star w := by
  sorry

-- Conjugation over ℂ viewed as an IsROrC type (ℂ has an IsROrC instance)
lemma complex_isROrC_conj_add (z w : ℂ) :
    star (z + w) = star z + star w := by
  sorry