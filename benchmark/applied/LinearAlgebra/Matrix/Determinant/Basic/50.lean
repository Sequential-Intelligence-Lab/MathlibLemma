import Mathlib

/-
The following are purely hypothetical / proposed lemmas.
They are intentionally left with `sorry` proofs.
-/
-- 51. Determinant is polynomial function of entries
lemma Matrix.det_isPolynomial
    {R} [CommRing R] {n : Type*} [Fintype n] [DecidableEq n] :
    ∃ (p : (n → n → R) → R), ∀ (A : Matrix n n R), p (fun i j => A i j) = A.det := by
  sorry