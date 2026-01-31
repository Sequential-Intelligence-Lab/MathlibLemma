import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

theorem Complex.deriv_exp_sub (a : ℂ) :
    deriv (fun z => Complex.exp (z - a)) = fun z => Complex.exp (z - a) := by
  -- Use the fact that the derivative of exp(z) is exp(z) and apply the chain rule.
  rw [show deriv (fun z => Complex.exp (z - a)) = fun z => Complex.exp (z - a) by
    ext z
    -- Use the derivative of exp(z) and the chain rule to compute the derivative.
    simp [Complex.deriv_exp, sub_eq_add_neg, add_comm]]