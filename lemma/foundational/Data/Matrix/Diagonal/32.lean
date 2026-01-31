import Mathlib

lemma diagonal_eq_scalar_iff
    [Semiring α] [DecidableEq n] [Fintype n]
    (d : n → α) (a : α) :
    Matrix.diagonal d = Matrix.scalar n a ↔ ∀ i, d i = a := by
  constructor
  · intro h i
    have hi := congrArg (fun M => M i i) h
    simpa [Matrix.diagonal, Matrix.scalar] using hi
  · intro h
    ext i j
    by_cases hij : i = j
    · subst hij
      simpa [Matrix.diagonal, Matrix.scalar, h]
    · simp [Matrix.diagonal, Matrix.scalar, hij]