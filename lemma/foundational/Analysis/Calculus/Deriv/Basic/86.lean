import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma derivWithin_univ_eq_deriv'
    {𝕜 : Type*} [NontriviallyNormedField 𝕜]
    (f : 𝕜 → 𝕜) (x : 𝕜) :
    derivWithin f Set.univ x = deriv f x := by
  -- Use the property that the derivative within the entire space is the same as the derivative.
  rw [derivWithin_univ]
  -- Simplify the expression by using the fact that the set.univ is the entire space.
  <;> simp
  -- Use the reflexivity of equality to confirm the equality.
  <;> rfl