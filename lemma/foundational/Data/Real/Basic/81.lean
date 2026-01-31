import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma IsPowMul.one {R : Type*} [Monoid R] :
    IsPowMul (fun _ : R => (1 : ℝ)) := by
  -- We need to show that for all x : R, f(x) = 1 is power multiplicative.
  refine' fun x => ?_
  -- Simplify the expression to show that f(x^n) = [f(x)]^n.
  simp [pow_mul, one_pow, mul_one]