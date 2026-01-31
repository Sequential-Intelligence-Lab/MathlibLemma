import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

theorem Complex.iteratedDeriv_exp (n : ℕ) :
    iteratedDeriv n Complex.exp = Complex.exp := by
  induction n with
  | zero =>
    -- Base case: The zeroth derivative of exp is exp itself.
    simp [iteratedDeriv_zero]
  | succ n ih =>
    -- Induction step: Assume the k-th derivative of exp is exp.
    -- We need to show the (k+1)-th derivative of exp is also exp.
    simp_all [iteratedDeriv_succ, Complex.exp_ne_zero]
    -- Simplify using the induction hypothesis and the fact that exp is never zero.
    <;> simp_all