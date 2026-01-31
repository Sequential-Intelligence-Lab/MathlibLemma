import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

theorem Complex.hasDerivAt_exp_mul (x : ℂ) (c : ℂ) :
    HasDerivAt (fun z => Complex.exp (c * z)) (c * Complex.exp (c * x)) x := by
  have h₁ : HasDerivAt (fun z : ℂ => c * z) c x := by
    have h : HasDerivAt (fun z : ℂ => c * z) (c * 1) x := by
      -- Use the fact that the derivative of `z ↦ c * z` is `c * 1 = c`
      simpa using (hasDerivAt_id x).const_mul c
    -- Simplify `c * 1` to `c`
    convert h using 1 <;> simp [one_mul]
    <;> ring
  
  have h₂ : HasDerivAt (fun w : ℂ => Complex.exp w) (Complex.exp (c * x)) (c * x) := by
    have h₂ : HasDerivAt (fun w : ℂ => Complex.exp w) (Complex.exp (c * x)) (c * x) := by
      -- Use the fact that the derivative of the exponential function is itself
      simpa using Complex.hasDerivAt_exp (c * x)
    exact h₂
  
  have h₃ : HasDerivAt (fun z : ℂ => Complex.exp (c * z)) (c * Complex.exp (c * x)) x := by
    -- Apply the chain rule to the composition of functions
    have h₃ : HasDerivAt (fun z : ℂ => Complex.exp (c * z)) (c * Complex.exp (c * x)) x := by
      -- Use the chain rule: (exp ∘ (c * z))' = exp'(c * x) * (c * z)' = exp(c * x) * c
      have h₄ : HasDerivAt (fun z : ℂ => c * z) c x := h₁
      have h₅ : HasDerivAt (fun w : ℂ => Complex.exp w) (Complex.exp (c * x)) (c * x) := h₂
      have h₆ : HasDerivAt (fun z : ℂ => Complex.exp (c * z)) (Complex.exp (c * x) * c) x := by
        -- Apply the chain rule: (exp ∘ (c * z))' = exp'(c * x) * (c * z)' = exp(c * x) * c
        have h₇ : HasDerivAt (fun z : ℂ => c * z) c x := h₁
        have h₈ : HasDerivAt (fun w : ℂ => Complex.exp w) (Complex.exp (c * x)) (c * x) := h₂
        -- Use the chain rule to combine the derivatives
        have h₉ : HasDerivAt (fun z : ℂ => Complex.exp (c * z)) (Complex.exp (c * x) * c) x := by
          -- Apply the chain rule
          apply HasDerivAt.comp x h₈ h₇
        exact h₉
      -- Simplify the expression to match the desired form
      have h₇ : Complex.exp (c * x) * c = c * Complex.exp (c * x) := by
        ring
      -- Use the simplified expression to complete the proof
      convert h₆ using 1 <;> simp [h₇]
      <;> ring
    exact h₃
  
  exact h₃