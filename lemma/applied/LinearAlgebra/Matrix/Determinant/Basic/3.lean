import Mathlib


/-
The following are purely hypothetical / proposed lemmas.
They are intentionally left with `sorry` proofs.
-/
-- 4. Determinant of scalar plus matrix when scalar is zero
lemma Matrix.det_scalar_add_eq_det {R} [CommRing R]
    {n : Type*} [Fintype n] [DecidableEq n]
    (A : Matrix n n R) :
    (Matrix.scalar n (0 : R) + A).det = A.det := by
  -- First show that `Matrix.scalar n (0)` is the zero matrix.
  have h0 : Matrix.scalar n (0 : R) = (0 : Matrix n n R) := by
    ext i j
    by_cases h : i = j
    · subst h
      -- On the diagonal, the scalar matrix has entry 0, same as the zero matrix.
      simp [Matrix.scalar_apply]
    · -- Off-diagonal entries are also 0.
      simp [Matrix.scalar_apply, h]
  -- Use `h0` to rewrite and simplify.
  calc
    (Matrix.scalar n (0 : R) + A).det
        = ((0 : Matrix n n R) + A).det := by
          simpa [h0]
    _ = A.det := by
          simpa