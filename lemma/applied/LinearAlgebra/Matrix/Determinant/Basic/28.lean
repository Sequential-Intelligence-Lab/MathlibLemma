import Mathlib


/-
The following are purely hypothetical / proposed lemmas.
They are intentionally left with `sorry` proofs.
-/
-- 29. Determinant of a matrix with a zero row and something else nonzero is zero
lemma Matrix.det_eq_zero_of_exists_zero_row
    {R} [CommRing R] {n : Type*} [Fintype n] [DecidableEq n]
    (A : Matrix n n R)
    (i : n) (hi : A i = 0) :
    A.det = 0 := by
  -- Turn the function equality `A i = 0` into pointwise equalities.
  have hrow : ∀ j : n, A i j = 0 := by
    intro j
    -- rewrite `A i` using `hi`
    simpa [hi]
  -- Now apply the standard mathlib lemma.
  exact Matrix.det_eq_zero_of_row_eq_zero (A := A) (i := i) hrow