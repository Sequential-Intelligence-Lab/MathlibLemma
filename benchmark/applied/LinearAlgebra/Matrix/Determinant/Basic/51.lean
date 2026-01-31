import Mathlib

/-
We introduce minimal stub definitions for `Matrix.permMatrix` and `Matrix.fromPerm`
so that the lemma statements typecheck. The bodies are `by exact 0` just to
produce something of the right type; they are not meant to be used.
-/

namespace Matrix

variable {R : Type*} {n : Type*} [Fintype n] [DecidableEq n]

/-- Stub for a permutation matrix constructor. -/
def permMatrix [Zero R] (σ : Equiv.Perm n) : Matrix n n R :=
  fun _ _ => 0

/-- Stub for a permutation matrix constructor (alternate name). -/
def fromPerm [Zero R] (σ : Equiv.Perm n) : Matrix n n R :=
  fun _ _ => 0

end Matrix

/-
We also introduce a minimal stub for `Equiv.Perm.conj` so that the lemma
statements typecheck. This is not the real definition.
-/

namespace Equiv.Perm

variable {n m : Type*}

/-- Stub for conjugation of a permutation by an equivalence. -/
def conj (e : n ≃ m) (σ : Equiv.Perm n) : Equiv.Perm m :=
  Equiv.refl m

end Equiv.Perm

/-
The following are purely hypothetical / proposed lemmas.
They are intentionally left with `sorry` proofs.
-/

-- 52a. Determinant of reindexed permutation matrix (using `permMatrix`)
lemma Matrix.det_permMatrix_conj
    {R} [CommRing R] {n m : Type*} [Fintype n] [DecidableEq n] [Fintype m] [DecidableEq m]
    (e : n ≃ m) (σ : Equiv.Perm n) :
    (Matrix.reindex e e (Matrix.permMatrix (R := R) σ)).det =
      (Matrix.permMatrix (R := R) (Equiv.Perm.conj e σ)).det := by
  sorry

-- 52b. Determinant of reindexed permutation matrix (using `fromPerm`)
lemma Matrix.det_fromPerm_conj
    {R} [CommRing R] {n m : Type*} [Fintype n] [DecidableEq n] [Fintype m] [DecidableEq m]
    (e : n ≃ m) (σ : Equiv.Perm n) :
    (Matrix.reindex e e (Matrix.fromPerm (R := R) σ)).det =
      (Matrix.fromPerm (R := R) (Equiv.Perm.conj e σ)).det := by
  sorry