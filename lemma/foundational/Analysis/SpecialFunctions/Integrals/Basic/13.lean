import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma integral_log_abs (a b : ℝ) (h : (0 : ℝ) ∉ Set.Icc a b) :
    ∫ x in a..b, Real.log (|x|) = b * Real.log (|b|) - a * Real.log (|a|) - (b - a) := by
  -- We need to prove that the integral of log|x| from a to b is equal to b * Real.log (|b|) - a * Real.log (|a|) - (b - a)
  -- Given that 0 is not in the interval [a, b], we can use the fact that the antiderivative of log|x| is x * Real.log (|x|) - x
  -- We will use the Fundamental Theorem of Calculus to evaluate the definite integral
  have h₁ : ∀ x : ℝ, x ≠ 0 → Real.log (|x|) = Real.log x := fun x hx => by
    -- For any x ≠ 0, log|x| is equal to log x
    cases' le_total 0 x with hx' hx' <;> simp [hx', Real.log_abs]
  -- Since 0 is not in [a, b], we can apply the antiderivative to the interval [a, b]
  have h₂ : ∀ x : ℝ, x ≠ 0 → Real.log (|x|) = Real.log x := fun x hx => by
    -- For any x ≠ 0, log|x| is equal to log x
    cases' le_total 0 x with hx' hx' <;> simp [hx', Real.log_abs]
  -- Use the Fundamental Theorem of Calculus to evaluate the definite integral
  simp_all [Set.mem_Icc, not_and_or]
  all_goals
    norm_num
    <;> linarith