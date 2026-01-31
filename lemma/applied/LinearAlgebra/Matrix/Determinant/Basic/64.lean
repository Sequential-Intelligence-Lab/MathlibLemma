import Mathlib


/-
The following are purely hypothetical / proposed lemmas.
They are intentionally left with `sorry` proofs.
-/
-- 65. Determinant over ℚ equals determinant over ℤ tensored
lemma Matrix.det_int_to_rat
    {n : Type*} [Fintype n] [DecidableEq n]
    (A : Matrix n n ℤ) :
    (Matrix.map A (algebraMap ℤ ℚ)).det =
      algebraMap ℤ ℚ A.det := by
  classical
  /-
  We prove this by unfolding the determinant formula as a sum over permutations,
  and using that a ring hom (`algebraMap ℤ ℚ`) distributes over sums and products,
  and respects the integer coefficients (the signs).
  -/
  -- `Matrix.map` with a ring hom is the usual entrywise map
  -- Now unfold determinant on both sides and push `algebraMap` inside.
  -- `Matrix.det_apply` gives the permutation-sum formula for det.
  simp [Matrix.det_apply, Matrix.map_apply, Matrix.map]  -- `simp` moves `algebraMap` inside and matches terms