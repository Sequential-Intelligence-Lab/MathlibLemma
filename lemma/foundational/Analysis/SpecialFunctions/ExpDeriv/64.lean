import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

theorem Complex.hasDerivAt_exp_comp {f : ℂ → ℂ} {f' : ℂ} {x : ℂ}
    (hf : HasDerivAt f f' x) :
    HasDerivAt (fun z => Complex.exp (f z)) (Complex.exp (f x) * f') x := by
  have h_exp_deriv : HasDerivAt (fun w : ℂ => Complex.exp w) (Complex.exp (f x)) (f x) := by
    apply Complex.hasDerivAt_exp
  
  have h_main : HasDerivAt (fun z => Complex.exp (f z)) (Complex.exp (f x) * f') x := by
    have h1 : HasDerivAt (fun z : ℂ => Complex.exp (f z)) (Complex.exp (f x) * f') x := by
      -- Apply the chain rule: the derivative of exp(f(z)) is exp(f(x)) * f'
      have h2 : HasDerivAt f f' x := hf
      have h3 : HasDerivAt (fun w : ℂ => Complex.exp w) (Complex.exp (f x)) (f x) := h_exp_deriv
      -- Use the chain rule for complex functions
      have h4 : HasDerivAt (fun z : ℂ => Complex.exp (f z)) (Complex.exp (f x) * f') x := by
        convert HasDerivAt.comp x h3 h2 using 1 <;>
        simp [Complex.exp_ne_zero]
        <;> ring_nf
        <;> simp_all [Complex.exp_ne_zero]
        <;> field_simp [Complex.exp_ne_zero]
        <;> ring_nf
        <;> simp_all [Complex.exp_ne_zero]
      exact h4
    exact h1
  
  exact h_main