import Mathlib

open Matrix

lemma diagonal_mul_inv
    (n : Type _) [DecidableEq n] [Fintype n]
    (α : Type _) [DivisionRing α]
    (d : n → α)
    (h : ∀ i, d i ≠ 0) :
    (Matrix.diagonal d : Matrix n n α) *
      (Matrix.diagonal fun i => (d i)⁻¹) =
    (1 : Matrix n n α) := by
  sorry

lemma inv_mul_diagonal
    (n : Type _) [DecidableEq n] [Fintype n]
    (α : Type _) [DivisionRing α]
    (d : n → α)
    (h : ∀ i, d i ≠ 0) :
    (Matrix.diagonal (fun i => (d i)⁻¹) : Matrix n n α) *
      (Matrix.diagonal d) =
    (1 : Matrix n n α) := by
  sorry