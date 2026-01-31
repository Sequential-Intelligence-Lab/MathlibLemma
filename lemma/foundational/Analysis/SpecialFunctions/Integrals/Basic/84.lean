import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma integral_log_one_plus (a b : ℝ) (h : ∀ x ∈ Set.Icc a b, -1 < x) :
    ∫ x in a..b, Real.log (1 + x) =
      (1 + b) * Real.log (1 + b) - (1 + a) * Real.log (1 + a) - (b - a) := by
  -- Perform the substitution t = 1 + x
  have h₁ : ∀ x ∈ Set.Icc a b, -1 < x := by
    intro x hx
    exact h x hx
  -- Use the substitution to simplify the integral
  have h₂ : ∀ x ∈ Set.Icc a b, x ≠ -1 := by
    intro x hx
    linarith [h₁ x hx]
  -- Integrate using the substitution and simplify
  field_simp [Set.Icc, h₁, h₂]
  -- Use the fundamental theorem of calculus to evaluate the integral
  simp_all [Real.log_one, Real.log_mul, Real.log_pow, mul_add, mul_comm, mul_left_comm]
  -- Simplify the expression to match the desired form
  ring
  -- Finalize the proof by ensuring all terms are in the correct form
  <;> simp_all
  <;> linarith