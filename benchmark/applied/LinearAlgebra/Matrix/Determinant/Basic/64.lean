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
  sorry
