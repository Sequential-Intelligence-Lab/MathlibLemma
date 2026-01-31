import Mathlib

/-
The following is a purely hypothetical / proposed lemma.
It is intentionally left with a `sorry` proof.
-/

/-- Determinant is multiplicative with respect to a block-diagonal
    matrix indexed by `Sum m n` (direct sum of index types). -/
lemma Matrix.det_directSum
    {R} [CommRing R]
    {m n : Type*} [Fintype m] [DecidableEq m]
    [Fintype n] [DecidableEq n]
    [DecidableEq (Sum m n)]
    (M : Matrix (Sum m n) (Sum m n) R)
    (A : Matrix m m R) (B : Matrix n n R) :
    M = (fun i j =>
      match i, j with
      | Sum.inl i, Sum.inl j => A i j
      | Sum.inr i, Sum.inr j => B i j
      | _, _ => 0) →
    M.det = A.det * B.det := by
  intro h
  sorry