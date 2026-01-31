import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma deriv_comp_affine {f : ℝ → ℝ} {a b x : ℝ}
    (hfd : HasDerivAt f (deriv f (a * x + b)) (a * x + b)) :
    HasDerivAt (fun t => f (a * t + b)) (a * deriv f (a * x + b)) x := by
  have h₁ : HasDerivAt (fun t : ℝ => a * t + b) a x := by
    -- Prove that the function `t ↦ a * t + b` has derivative `a` at `x`
    have h₁ : HasDerivAt (fun t : ℝ => a * t + b) (a) x := by
      -- Use the rules for derivatives of linear functions
      have h₂ : HasDerivAt (fun t : ℝ => a * t) a x := by
        simpa using (hasDerivAt_id x).const_mul a
      have h₃ : HasDerivAt (fun t : ℝ => (a * t : ℝ) + b) (a + 0) x := by
        convert h₂.add_const b using 1 <;> ring
      convert h₃ using 1 <;> ring
    exact h₁
  
  have h₂ : HasDerivAt (fun t => f (a * t + b)) (deriv f (a * x + b) * a) x := by
    -- Apply the chain rule to the composition of f and (fun t => a * t + b)
    have h₂ : HasDerivAt (fun t => f (a * t + b)) (deriv f (a * x + b) * a) x := by
      -- Use the chain rule: (f ∘ g)'(x) = f'(g(x)) * g'(x)
      have h₃ : HasDerivAt (fun t : ℝ => a * t + b) a x := h₁
      have h₄ : HasDerivAt f (deriv f (a * x + b)) (a * x + b) := hfd
      have h₅ : HasDerivAt (fun t => f (a * t + b)) (deriv f (a * x + b) * a) x := by
        -- Apply the chain rule using HasDerivAt.comp
        have h₆ : HasDerivAt (fun t => a * t + b) a x := h₁
        have h₇ : HasDerivAt f (deriv f (a * x + b)) (a * x + b) := hfd
        -- Compute the derivative of the composition
        have h₈ : HasDerivAt (fun t => f (a * t + b)) (deriv f (a * x + b) * a) x :=
          HasDerivAt.comp x h₇ h₆
        exact h₈
      exact h₅
    exact h₂
  
  have h₃ : HasDerivAt (fun t => f (a * t + b)) (a * deriv f (a * x + b)) x := by
    -- Use the fact that multiplication is commutative to rewrite the derivative
    have h₃ : deriv f (a * x + b) * a = a * deriv f (a * x + b) := by ring
    -- Convert the derivative using the commutative property
    convert h₂ using 1 <;> rw [h₃]
    <;>
    norm_num
    <;>
    linarith
  
  exact h₃