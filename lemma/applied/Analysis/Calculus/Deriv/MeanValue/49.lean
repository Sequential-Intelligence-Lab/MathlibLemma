import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma deriv_comp_mul {f : ℝ → ℝ} {g : ℝ → ℝ} {x : ℝ}
    (hf : HasDerivAt f (deriv f (g x)) (g x))
    (hg : HasDerivAt g (deriv g x) x) :
    HasDerivAt (fun t => f (g t)) (deriv f (g x) * deriv g x) x := by
  -- Use the chain rule for derivatives, which states that the derivative of a composition is the product of the derivatives.
  have h1 : HasDerivAt (fun t => f (g t)) (deriv f (g x) * deriv g x) x := by
    apply HasDerivAt.comp
    -- Apply the chain rule: the derivative of f at g(x) times the derivative of g at x.
    <;> simp_all [hf, hg]
  -- The result follows directly from the chain rule application.
  exact h1