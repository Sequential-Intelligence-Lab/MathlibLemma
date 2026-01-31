import Mathlib

/-
The following are purely hypothetical / proposed lemmas.
They are intentionally left with `sorry` proofs.
-/

namespace Matrix

/-- Hypothetical permutation matrix associated to a permutation `σ`. -/
def permMatrix {n : Type*} [Fintype n] [DecidableEq n]
    {R} [CommRing R] (σ : Equiv.Perm n) : Matrix n n R :=
  sorry

end Matrix

/-- Determinant of a permutation matrix is the sign. -/
lemma Matrix.det_permutationMatrix {R} [CommRing R]
    {n : Type*} [Fintype n] [DecidableEq n]
    (σ : Equiv.Perm n) :
    (Matrix.permMatrix σ : Matrix n n R).det = (σ.sign : R) := by
  sorry

/-
The following are purely hypothetical / proposed lemmas.
They are intentionally left with `sorry` proofs.
-/

/-- Determinant of a permutation matrix is the sign (alternate name). -/
lemma Matrix.det_fromPerm {R} [CommRing R]
    {n : Type*} [Fintype n] [DecidableEq n]
    (σ : Equiv.Perm n) :
    (Matrix.permMatrix σ : Matrix n n R).det = (σ.sign : R) := by
  sorry