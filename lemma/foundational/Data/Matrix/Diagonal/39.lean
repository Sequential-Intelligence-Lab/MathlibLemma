import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma diag_block [Zero α]
    (A₁₁ : Matrix m m α) (A₁₂ : Matrix m n α)
    (A₂₁ : Matrix n m α) (A₂₂ : Matrix n n α) :
    (fun i : Sum m n => (Matrix.fromBlocks A₁₁ A₁₂ A₂₁ A₂₂) i i) =
      Sum.elim (fun i => A₁₁ i i) (fun j => A₂₂ j j) := by
  funext i
  -- We need to show that for any index `i` in the sum type `m + n`, the diagonal element of the block matrix `A` at position `i` corresponds to the sum type combination of the diagonals of the diagonal blocks `A₁₁` and `A₂₂`.
  cases i <;> simp [Matrix.fromBlocks]
  -- For each case of `i` (either `Inl i` or `Inr j`), we simplify the expression using the definition of `Matrix.fromBlocks` and the properties of the diagonal elements.
  <;> aesop