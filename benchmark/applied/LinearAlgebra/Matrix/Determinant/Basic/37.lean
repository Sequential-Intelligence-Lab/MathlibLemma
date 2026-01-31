import Mathlib

/-
The following are purely hypothetical / proposed lemmas.
They are intentionally left with `sorry` proofs.
-/

open Polynomial Matrix

-- 38. Determinant of polynomial matrix at evaluation equals determinant map
lemma Matrix.det_eval_polynomial_matrix
    {R} [CommRing R] {n : Type*} [Fintype n] [DecidableEq n]
    (A : Matrix n n R[X]) (x : R) :
    (Matrix.map A (Polynomial.eval x)).det =
      Polynomial.eval x (A.det) := by
  sorry