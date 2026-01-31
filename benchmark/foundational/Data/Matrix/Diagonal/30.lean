import Mathlib

open Matrix

lemma diagonal_isHermitian_iff
    {α : Type _} [Semiring α] [Star α] [InvolutiveStar α]
    {n : Type _} [DecidableEq n]
    (d : n → α) :
    IsHermitian (diagonal d : Matrix n n α) ↔ ∀ i, star (d i) = d i := by
  sorry