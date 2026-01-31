import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma integral_id_pow (a b : ℝ) (n : ℕ) :
    ∫ x in a..b, x^n =
      (b^(n + 1) - a^(n + 1)) / (n + 1) := by
  -- Use the Fundamental Theorem of Calculus and properties of integrals to simplify the expression.
  simp [integral_id, Nat.add_comm, Nat.add_assoc, Nat.add_left_comm, Nat.succ_eq_add_one]
  -- Simplify the expression using algebraic properties and the fact that division by a non-zero integer is valid.
  <;> ring
  -- Ensure all terms are in the correct form and simplify any remaining expressions.
  <;> simp_all
  -- Normalize the expression to ensure it matches the expected form.
  <;> ring_nf
  -- Verify that all terms are in the simplest form and the proof is complete.
  <;> simp_all