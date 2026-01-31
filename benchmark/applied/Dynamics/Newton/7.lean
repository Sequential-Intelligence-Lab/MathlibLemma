import Mathlib

/-- Newton map on a linear polynomial `X - a` with invertible derivative is the constant map
to the root. -/
lemma Polynomial.newtonMap_X_sub_C
    {R S : Type*} [CommRing R] [Field S] [Algebra R S]
    (a : R) (x : S) :
    (Polynomial.X - Polynomial.C a).newtonMap x =
      algebraMap R S a := by
  sorry
