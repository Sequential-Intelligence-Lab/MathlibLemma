import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma HasDerivAt.mul'
    {𝕜 : Type*} [NontriviallyNormedField 𝕜]
    {x : 𝕜}
    {f g : 𝕜 → 𝕜} {f' g' : 𝕜}
    (hf : HasDerivAt f f' x)
    (hg : HasDerivAt g g' x) :
    HasDerivAt (fun y => f y * g y) (f' * g x + f x * g') x := by
  -- Use the definition of the derivative to expand the product
  have h1 := hf.mul hg
  -- Simplify the expression using the properties of multiplication and addition
  simp only [mul_add, add_mul, mul_comm, mul_left_comm] at h1 ⊢
  -- Use the fact that the limit of a sum is the sum of the limits
  exact h1