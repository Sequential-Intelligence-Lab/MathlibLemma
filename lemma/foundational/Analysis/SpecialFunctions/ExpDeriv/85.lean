import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

theorem Real.hasDerivAt_exp_mul (x c : ℝ) :
    HasDerivAt (fun t => Real.exp (c * t)) (c * Real.exp (c * x)) x := by
  have h₁ : HasDerivAt (fun t : ℝ => c * t) c x := by
    simpa using (hasDerivAt_id x).const_mul c
  
  have h₂ : HasDerivAt (fun y : ℝ => Real.exp y) (Real.exp (c * x)) (c * x) := by
    apply Real.hasDerivAt_exp
  
  have h₃ : HasDerivAt (fun t => Real.exp (c * t)) (Real.exp (c * x) * c) x := by
    have h₃₁ : HasDerivAt (fun t : ℝ => c * t) c x := h₁
    have h₃₂ : HasDerivAt (fun y : ℝ => Real.exp y) (Real.exp (c * x)) (c * x) := h₂
    -- Apply the chain rule to the composition of the exponential function and the linear function.
    have h₃₃ : HasDerivAt (fun t : ℝ => Real.exp (c * t)) (Real.exp (c * x) * c) x := by
      -- Use the chain rule to combine the derivatives.
      have h₃₄ : HasDerivAt (fun t : ℝ => Real.exp (c * t)) (Real.exp (c * x) * c) x := by
        -- Apply the chain rule: the derivative of exp(c*t) is exp(c*x) * c.
        apply HasDerivAt.comp x h₃₂ h₃₁
      exact h₃₄
    exact h₃₃
  
  have h₄ : HasDerivAt (fun t => Real.exp (c * t)) (c * Real.exp (c * x)) x := by
    have h₄₁ : HasDerivAt (fun t => Real.exp (c * t)) (Real.exp (c * x) * c) x := h₃
    have h₄₂ : Real.exp (c * x) * c = c * Real.exp (c * x) := by ring
    convert h₄₁ using 1
    <;> rw [h₄₂]
    <;> ring
  
  exact h₄