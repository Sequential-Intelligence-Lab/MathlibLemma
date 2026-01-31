import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma HasDerivAt.comp_affine'
    {𝕜 : Type*} [NontriviallyNormedField 𝕜]
    (a b : 𝕜) {f : 𝕜 → 𝕜} {f' : 𝕜} {x : 𝕜}
    (hf : HasDerivAt f f' (a * x + b)) :
    HasDerivAt (fun y => f (a * y + b)) (a * f') x := by
  have h_inner : HasDerivAt (fun y : 𝕜 => a * y + b) a x := by
    -- Differentiate the affine function a * y + b
    have h1 : HasDerivAt (fun y : 𝕜 => a * y) a x := by
      -- The derivative of a * y is a
      simpa using (hasDerivAt_id x).const_mul a
    -- Add the constant b, which does not affect the derivative
    have h2 : HasDerivAt (fun y : 𝕜 => (a * y : 𝕜) + b) a x := by
      convert h1.add (hasDerivAt_const x b) using 1 <;> simp [add_assoc]
    -- Simplify the expression
    convert h2 using 1 <;> simp [add_assoc]
  
  have h_comp : HasDerivAt (fun y : 𝕜 => f (a * y + b)) (f' * a) x := by
    have h3 : HasDerivAt (fun y : 𝕜 => a * y + b) a x := h_inner
    have h4 : HasDerivAt f f' (a * x + b) := hf
    -- Apply the chain rule to get the derivative of the composition
    have h5 : HasDerivAt (fun y : 𝕜 => f (a * y + b)) (f' * a) x := HasDerivAt.comp x h4 h3
    exact h5
  
  have h_final : HasDerivAt (fun y : 𝕜 => f (a * y + b)) (a * f') x := by
    have h6 : HasDerivAt (fun y : 𝕜 => f (a * y + b)) (f' * a) x := h_comp
    -- Use the commutativity of multiplication in the field to adjust the derivative
    have h7 : f' * a = a * f' := by
      ring
    -- Replace the derivative with the adjusted form
    convert h6 using 1
    <;> simp [h7]
    <;>
    (try ring_nf)
    <;>
    (try simp_all [mul_comm])
  
  exact h_final