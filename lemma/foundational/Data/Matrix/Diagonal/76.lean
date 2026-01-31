import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma diagonal_diag_eq_self_of_isDiag [Zero α] [DecidableEq n]
    {A : Matrix n n α} (h : Matrix.IsDiag A) :
    Matrix.diagonal (Matrix.diag A) = A := by
  have h_main : ∀ (i j : n), (Matrix.diagonal (Matrix.diag A)) i j = A i j := by
    intro i j
    by_cases hij : i = j
    · -- Case: i = j
      have h1 : (Matrix.diagonal (Matrix.diag A)) i j = (Matrix.diag A) i := by
        simp [Matrix.diagonal_apply, hij]
      have h2 : (Matrix.diag A) i = A i i := by
        simp [Matrix.diag_apply]
      have h3 : A i i = A i j := by
        rw [hij]
      calc
        (Matrix.diagonal (Matrix.diag A)) i j = (Matrix.diag A) i := h1
        _ = A i i := h2
        _ = A i j := h3
    · -- Case: i ≠ j
      have h1 : (Matrix.diagonal (Matrix.diag A)) i j = 0 := by
        simp [Matrix.diagonal_apply, hij]
      have h2 : A i j = 0 := by
        apply h
        exact hij
      calc
        (Matrix.diagonal (Matrix.diag A)) i j = 0 := h1
        _ = A i j := by rw [h2]
  
  have h_final : Matrix.diagonal (Matrix.diag A) = A := by
    apply Matrix.ext
    intro i j
    apply h_main
  
  exact h_final