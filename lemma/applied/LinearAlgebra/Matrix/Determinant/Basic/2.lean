import Mathlib


/-
The following are purely hypothetical / proposed lemmas.
They are intentionally left with `sorry` proofs.
-/
-- 3. Determinant of scalar matrix
lemma Matrix.det_scalar {R} [CommRing R]
    {n : Type*} [Fintype n] [DecidableEq n]
    (a : R) :
    (Matrix.scalar n a).det = a ^ Fintype.card n := by
  classical
  -- First, identify the scalar matrix with a diagonal matrix
  have h :
      Matrix.scalar n a = Matrix.diagonal (fun _ : n => a) := by
    -- Prove equality entrywise
    ext i j
    -- `Matrix.scalar` puts `a` on the diagonal, `0` off-diagonal
    -- `Matrix.diagonal (fun _ => a)` does the same
    by_cases hij : i = j
    · subst hij
      simp [Matrix.scalar, Matrix.diagonal]
    · simp [Matrix.scalar, Matrix.diagonal, hij]

  -- Now use the determinant of a diagonal matrix and compute the product
  -- over a constant function
  simpa [h, Finset.prod_const, Finset.card_univ] using
    (Matrix.det_diagonal (fun _ : n => a))