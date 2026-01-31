import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma LinearMap.trace_blockMat_eq_sum
    {R : Type*} [CommRing R]
    {m : Type*} [Fintype m] [DecidableEq m]
    (A B : Matrix m m R) :
    (Matrix.blockDiagonal ![A, B]).trace = A.trace + B.trace := by
  have h_main : (Matrix.blockDiagonal ![A, B]).trace = A.trace + B.trace := by
    -- Use the general lemma for the trace of a block diagonal matrix
    rw [Matrix.trace_blockDiagonal]
    -- Simplify the sum over Fin 2
    <;> simp [Fin.sum_univ_succ]
    <;>
    (try decide) <;>
    (try ring) <;>
    (try simp_all [Matrix.trace]) <;>
    (try rfl)
    <;>
    (try simp_all [Fin.sum_univ_succ])
    <;>
    (try ring)
    <;>
    (try decide)
    <;>
    (try simp_all [Matrix.trace])
    <;>
    (try rfl)
  -- The main goal follows directly from the established fact
  exact h_main