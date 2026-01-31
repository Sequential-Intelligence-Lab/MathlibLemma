import Mathlib

lemma mulVec_eq_mulVec_iff
    {α : Type _} {m n : Type _}
    [Fintype n] [DecidableEq n]
    [NonUnitalNonAssocSemiring α]
    (A B : Matrix m n α) :
    (∀ v : n → α, Matrix.mulVec A v = Matrix.mulVec B v) ↔ A = B := by
  sorry