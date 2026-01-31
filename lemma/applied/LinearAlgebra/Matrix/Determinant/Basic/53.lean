import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Matrix.det_eq_charPoly_coeff
    {R} [CommRing R] {n : Type*} [Fintype n] [DecidableEq n]
    (A : Matrix n n R) :
    A.det = (-1 : R) ^ Fintype.card n *
      (A.charpoly.coeff 0) := by
  have h_main : A.det = (-1 : R) ^ Fintype.card n * (A.charpoly.coeff 0) := by
    have h₁ : A.det = (-1 : R) ^ Fintype.card n * (A.charpoly.coeff 0) := by
      -- Use the known lemma from Mathlib to directly get the result
      have h₂ : A.det = (-1 : R) ^ Fintype.card n * (A.charpoly.coeff 0) := by
        -- This is the exact statement of `Matrix.det_eq_sign_charpoly_coeff` in Mathlib
        rw [Matrix.det_eq_sign_charpoly_coeff]
        <;>
        simp [mul_comm]
      exact h₂
    exact h₁
  apply h_main