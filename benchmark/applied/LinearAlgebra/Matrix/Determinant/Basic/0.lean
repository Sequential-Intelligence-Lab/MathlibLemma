import Mathlib

/-
The following are purely hypothetical / proposed lemmas.
They are intentionally left with `sorry` proofs.
-/

/-- Determinant of a block diagonal matrix with 2 blocks (same index type). -/
lemma Matrix.det_blockDiagonal_fin_two {R} [CommRing R]
    {n : Type*} [Fintype n] [DecidableEq n]
    (A B : Matrix n n R) :
    (Matrix.blockDiagonal (fun b : Fin 2 =>
      match b with
      | 0 => A
      | 1 => B)).det = A.det * B.det := by
  sorry