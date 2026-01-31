import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma deriv_affine_comp {f : ℝ → ℝ} {a b x : ℝ}
    (hfd : HasDerivAt f (deriv f x) x) :
    HasDerivAt (fun t => a * f t + b) (a * deriv f x) x := by
  have h1 : HasDerivAt (fun t : ℝ => a * f t) (a * deriv f x) x := by
    have h1_1 : HasDerivAt (fun t : ℝ => a * f t) (a * deriv f x) x := by
      -- Use the constant multiple rule for derivatives
      have h1_2 : HasDerivAt f (deriv f x) x := hfd
      convert HasDerivAt.const_mul a h1_2 using 1 <;> ring
    exact h1_1
  
  have h2 : HasDerivAt (fun t : ℝ => (b : ℝ)) 0 x := by
    -- Prove that the derivative of the constant function b is 0
    have h2_1 : HasDerivAt (fun t : ℝ => (b : ℝ)) 0 x := by
      simpa using hasDerivAt_const x b
    exact h2_1
  
  have h3 : HasDerivAt (fun t => a * f t + b) (a * deriv f x + 0) x := by
    -- Use the sum rule to find the derivative of a * f(t) + b
    have h3_1 : HasDerivAt (fun t => a * f t + b) (a * deriv f x + 0) x := by
      convert h1.add h2 using 1 <;> ring
    exact h3_1
  
  have h4 : HasDerivAt (fun t => a * f t + b) (a * deriv f x) x := by
    -- Simplify the expression a * deriv f x + 0 to a * deriv f x
    convert h3 using 1 <;> ring
  
  exact h4