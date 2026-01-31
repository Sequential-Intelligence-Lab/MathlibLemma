import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat


variable {E : Type _} [NormedAddCommGroup E] [NormedSpace ℝ E]

theorem taylorWithinEval_zero (f : ℝ → E) (s : Set ℝ) (x₀ : ℝ) :
    taylorWithinEval f 0 s x₀ x₀ = f x₀ := by
  simp only [taylorWithinEval, taylorWithin, Finset.sum_range_succ, pow_zero, mul_one, taylorCoeffWithin, iteratedDerivWithin]
  all_goals
    norm_num [Nat.factorial]