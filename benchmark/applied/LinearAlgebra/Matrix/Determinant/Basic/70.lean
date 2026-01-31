import Mathlib

/-
The following are purely hypothetical / proposed lemmas.
They are intentionally left with `sorry` proofs.
-/

namespace Matrix

/-- A permutation matrix associated to a permutation `σ` on a finite type `α`. -/
def perm {R} [CommRing R] {α : Type*} [Fintype α] [DecidableEq α]
    (σ : Equiv.Perm α) : Matrix α α R :=
  fun i j => if σ j = i then 1 else 0

end Matrix

/-- 71. Determinant of permutation of tensor product basis is ±1 -/
lemma Matrix.det_permutation_tmul_basis
    {R} [CommRing R]
    {m n : Type*} [Fintype m] [DecidableEq m]
    [Fintype n] [DecidableEq n]
    (σ : Equiv.Perm (m × n)) :
    ((Matrix.perm σ : Matrix (m × n) (m × n) R).det) ^ 2 = (1 : R) := by
  sorry