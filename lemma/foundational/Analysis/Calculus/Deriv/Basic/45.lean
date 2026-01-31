import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma derivWithin_add_const'
    {𝕜 : Type*} [NontriviallyNormedField 𝕜]
    {F : Type*} [NormedAddCommGroup F] [NormedSpace 𝕜 F]
    (f : 𝕜 → F) (c : F) (s : Set 𝕜) :
    derivWithin (fun x => f x + c) s = fun x => derivWithin f s x := by
  ext x
  -- Use the fact that the derivative of a constant is zero
  simp [derivWithin_add_const, derivWithin_const]
  -- Simplify the expression to show that the derivatives are equal
  <;> simp_all
  <;> apply Eq.refl