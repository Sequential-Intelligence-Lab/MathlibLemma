import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Real.hasDerivAt_log_comp {f : ℝ → ℝ} {x : ℝ}
    (hf : HasDerivAt f f' x) (hx : f x ≠ 0) :
    HasDerivAt (fun t => Real.log (f t)) (f' / f x) x := by
  have h_log_deriv : HasDerivAt Real.log (1 / (f x)) (f x) := by
    have h₁ : HasDerivAt Real.log (1 / (f x)) (f x) := by
      -- Apply the known derivative of the logarithm function at the point f x
      have h₂ : f x ≠ 0 := hx
      convert Real.hasDerivAt_log h₂ using 1 <;> field_simp
    exact h₁
  
  have h_chain : HasDerivAt (fun t => Real.log (f t)) ((1 / (f x)) * f') x := by
    -- Use the chain rule to find the derivative of the composition of functions
    have h₂ : HasDerivAt (fun t : ℝ => Real.log (f t)) ((1 / (f x)) * f') x := by
      -- Apply the chain rule: derivative of log(f(t)) is (1 / f(x)) * f'
      have h₃ : HasDerivAt f f' x := hf
      have h₄ : HasDerivAt Real.log (1 / (f x)) (f x) := h_log_deriv
      have h₅ : HasDerivAt (fun t : ℝ => Real.log (f t)) ((1 / (f x)) * f') x :=
        HasDerivAt.comp x h₄ h₃
      exact h₅
    exact h₂
  
  have h_final : HasDerivAt (fun t => Real.log (f t)) (f' / f x) x := by
    have h₃ : (1 / (f x)) * f' = f' / f x := by
      ring
    have h₄ : HasDerivAt (fun t => Real.log (f t)) ((1 / (f x)) * f') x := h_chain
    have h₅ : HasDerivAt (fun t => Real.log (f t)) (f' / f x) x := by
      convert h₄ using 1
      <;> rw [h₃]
    exact h₅
  
  exact h_final