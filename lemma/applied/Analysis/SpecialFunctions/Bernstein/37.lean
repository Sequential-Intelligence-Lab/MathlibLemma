import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma bernstein_partition_of_unity (n : ℕ) :
    ∀ x : unitInterval, (∑ k : Fin (n + 1), bernstein n k x) = 1 := by
  intro x
  -- We use the fact that the sum of Bernstein polynomials equals 1 for all x in [0,1].
  rw [← sub_eq_zero]
  simp [sub_eq_zero]
  -- The sum of Bernstein polynomials of degree n equals 1 for all x in [0,1].
  -- This is a direct consequence of the binomial theorem and the definition of Bernstein polynomials.
  <;> simp [bernstein]
  <;> simp_all [Fin.sum_univ_succ, add_comm, add_left_comm, add_assoc]
  <;> ring
  <;> norm_num
  <;> linarith