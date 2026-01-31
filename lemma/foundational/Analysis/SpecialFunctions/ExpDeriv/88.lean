import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

theorem Real.hasDerivAt_exp_add (x a : ℝ) :
    HasDerivAt (fun t => Real.exp (t + a)) (Real.exp (x + a)) x := by
  have h_inner : HasDerivAt (fun t : ℝ => t + a) 1 x := by
    have h1 : HasDerivAt (fun t : ℝ => t + a) (1 : ℝ) x := by
      -- Use the sum rule for derivatives: the derivative of t is 1, and the derivative of a is 0.
      have h2 : HasDerivAt (fun t : ℝ => t : ℝ → ℝ) 1 x := by
        simpa using (hasDerivAt_id x)
      have h3 : HasDerivAt (fun t : ℝ => a : ℝ → ℝ) 0 x := by
        simpa using hasDerivAt_const x a
      -- Combine the derivatives using the sum rule.
      have h4 : HasDerivAt (fun t : ℝ => t + a : ℝ → ℝ) (1 + 0 : ℝ) x := HasDerivAt.add h2 h3
      convert h4 using 1 <;> norm_num
    exact h1
  
  have h_exp : HasDerivAt (fun t : ℝ => Real.exp (t + a)) (Real.exp (x + a) * 1) x := by
    have h₁ : HasDerivAt (fun t : ℝ => t + a) 1 x := h_inner
    -- Apply the exponential rule for derivatives
    have h₂ : HasDerivAt (fun t : ℝ => Real.exp (t + a)) (Real.exp (x + a) * 1) x := by
      -- Use the fact that the derivative of exp(u) is exp(u) * u'
      have h₃ : HasDerivAt (fun t : ℝ => t + a) 1 x := h_inner
      -- Apply the chain rule for the exponential function
      have h₄ : HasDerivAt (fun t : ℝ => Real.exp (t + a)) (Real.exp (x + a) * 1) x :=
        HasDerivAt.exp h₃
      exact h₄
    exact h₂
  
  have h_final : HasDerivAt (fun t => Real.exp (t + a)) (Real.exp (x + a)) x := by
    convert h_exp using 1 <;> ring_nf
    <;> simp [Real.exp_add]
    <;> field_simp [Real.exp_ne_zero]
    <;> ring_nf
    <;> simp_all [Real.exp_add]
    <;> linarith
  
  exact h_final