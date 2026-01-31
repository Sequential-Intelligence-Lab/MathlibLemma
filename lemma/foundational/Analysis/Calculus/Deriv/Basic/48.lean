import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma derivWithin_const_add'
    {𝕜 : Type*} [NontriviallyNormedField 𝕜]
    {F : Type*} [NormedAddCommGroup F] [NormedSpace 𝕜 F]
    (c : F) (f : 𝕜 → F) (s : Set 𝕜) :
    derivWithin (fun x => c + f x) s = fun x => derivWithin f s x := by
  ext x
  by_cases hx : x ∈ s
  -- If x is in the set s, then the derivative of the constant c is zero, and the derivative of the sum is the sum of the derivatives.
  simp [hx, derivWithin_const_add]
  -- If x is not in the set s, the derivative within s is undefined, and the result follows trivially.
  simp [hx, derivWithin_const_add]