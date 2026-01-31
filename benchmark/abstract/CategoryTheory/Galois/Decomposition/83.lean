import Mathlib

open CategoryTheory

/-- The decomposition of an object in a Galois category into Galois components is unique
up to permutation and isomorphism. -/
lemma decomp_into_galois_unique
    {C : Type u} [Category C] [GaloisCategory C] :
    True := by
  sorry