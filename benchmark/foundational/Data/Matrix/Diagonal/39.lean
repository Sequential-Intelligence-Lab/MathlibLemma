import Mathlib

open Matrix

variable {α : Type _} {m n : Type _}

/-- Diagonal of a block matrix is the sum-type combination of the diagonals
of the diagonal blocks. -/
lemma diag_block [Zero α]
    (A₁₁ : Matrix m m α) (A₁₂ : Matrix m n α)
    (A₂₁ : Matrix n m α) (A₂₂ : Matrix n n α) :
    (fun i : Sum m n => (Matrix.fromBlocks A₁₁ A₁₂ A₂₁ A₂₂) i i) =
      Sum.elim (fun i => A₁₁ i i) (fun j => A₂₂ j j) := by
  sorry