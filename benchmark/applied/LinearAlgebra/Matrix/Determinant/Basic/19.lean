import Mathlib

/-
The following are purely hypothetical / proposed lemmas.
They are intentionally left with `sorry` proofs.
-/

-- 20. If determinant nonzero, matrix is injective as a linear map
lemma Matrix.injective_toLin'_of_det_ne_zero
    {R} [CommRing R] [IsDomain R]
    {n : Type*} [Fintype n] [DecidableEq n]
    (A : Matrix n n R) (h : A.det ≠ 0) :
    Function.Injective A.toLin' := by
  sorry