import Mathlib

/-
The following are purely hypothetical / proposed lemmas.
They are intentionally left with `sorry` proofs.
-/

/-- 19. Determinant of a matrix with rank strictly less than full is zero (over domain) -/
lemma Matrix.det_eq_zero_of_rank_lt
    {R} [CommRing R] [IsDomain R]
    {n : Type*} [Fintype n] [DecidableEq n]
    (A : Matrix n n R)
    (h : Module.rank R (n → R) > Matrix.rank A) :
    A.det = 0 := by
  sorry