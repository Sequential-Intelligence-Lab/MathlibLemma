import Mathlib

/-
The following are purely hypothetical / proposed lemmas.
They are intentionally left with `sorry` proofs.
The goal here is only to make the statement compile.
-/

namespace Matrix

variable {K} [Field K] [IsAlgClosed K]
variable {n : Type*} [Fintype n] [DecidableEq n]

/-- A dummy predicate expressing that a matrix is diagonalizable.
    This is only for the purpose of having a compilable lemma statement. -/
def IsDiagonalizable (A : Matrix n n K) : Prop := True

/-- A structure packaging a matrix together with some "eigenvalues" and
    their "multiplicities". This is purely for a compilable statement. -/
structure DiagonalizableData where
  A        : Matrix n n K
  h_diag   : IsDiagonalizable (A := A)
  eigenval : n → K
  mult     : K → ℕ

/-
36. Determinant as product of eigenvalues for a diagonalizable matrix over
an algebraically closed field (hypothetical statement).
-/
lemma det_eq_prod_eigenvalues_of_isDiagonalizable
    (d : DiagonalizableData (K := K) (n := n)) :
    d.A.det = ∏ i : n, (d.eigenval i) ^ (d.mult (d.eigenval i)) := by
  sorry

end Matrix