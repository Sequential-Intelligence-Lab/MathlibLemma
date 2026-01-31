import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

theorem Complex.hasDerivAt_exp_add (x a : ℂ) :
    HasDerivAt (fun z => Complex.exp (z + a)) (Complex.exp (x + a)) x := by
  have h₁ : HasDerivAt (fun z : ℂ => z + a) 1 x := by
    have h₂ : HasDerivAt (fun z : ℂ => z) 1 x := by
      simpa using (hasDerivAt_id x)
    have h₃ : HasDerivAt (fun z : ℂ => a) 0 x := by
      simpa using hasDerivAt_const x a
    -- Combine the derivatives of z ↦ z and z ↦ a using the sum rule
    have h₄ : HasDerivAt (fun z : ℂ => z + a) (1 + 0) x := HasDerivAt.add h₂ h₃
    -- Simplify the derivative
    convert h₄ using 1 <;> simp [add_zero]
    <;>
    norm_num
  
  have h₃ : HasDerivAt (fun z : ℂ => Complex.exp (z + a)) (Complex.exp (x + a)) x := by
    have h₄ : HasDerivAt (fun z : ℂ => Complex.exp (z + a)) (Complex.exp (x + a) * 1) x := by
      -- Use the chain rule to differentiate the composition of exp and (z ↦ z + a)
      have h₅ : HasDerivAt (fun z : ℂ => z + a) 1 x := h₁
      have h₆ : HasDerivAt (fun w : ℂ => Complex.exp w) (Complex.exp (x + a)) (x + a) := by
        -- The derivative of exp at (x + a) is exp(x + a)
        simpa using Complex.hasDerivAt_exp (x + a)
      -- Apply the chain rule
      have h₇ : HasDerivAt (fun z : ℂ => Complex.exp (z + a)) (Complex.exp (x + a) * 1) x := by
        -- Use the fact that exp is differentiable and the derivative of (z ↦ z + a) is 1
        have h₈ : HasDerivAt (fun z : ℂ => z + a) 1 x := h₁
        have h₉ : HasDerivAt (fun w : ℂ => Complex.exp w) (Complex.exp (x + a)) (x + a) := h₆
        -- Use the chain rule to combine the derivatives
        have h₁₀ : HasDerivAt (fun z : ℂ => Complex.exp (z + a)) (Complex.exp (x + a) * 1) x := by
          -- Apply the chain rule: (exp ∘ (z ↦ z + a))' = exp'(x + a) * (z ↦ z + a)'
          convert HasDerivAt.comp x h₉ h₈ using 1 <;>
            simp [Complex.exp_add, mul_one, add_mul, mul_add, mul_comm, mul_left_comm, mul_assoc]
          <;>
          ring_nf
          <;>
          simp_all [Complex.exp_add]
          <;>
          ring_nf
        exact h₁₀
      exact h₇
    -- Simplify the derivative to get the final result
    convert h₄ using 1 <;> simp [mul_one]
    <;>
    ring_nf
    <;>
    simp_all [Complex.exp_add]
    <;>
    ring_nf
  
  exact h₃