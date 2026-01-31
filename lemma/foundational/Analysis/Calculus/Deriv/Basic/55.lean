import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma derivWithin_comp_id'
    {𝕜 : Type*} [NontriviallyNormedField 𝕜]
    (f : 𝕜 → 𝕜) (s : Set 𝕜) (x : 𝕜) :
    derivWithin (fun y => f y) s x = derivWithin f s x := by
  -- Use the fact that `fun y => f y` is definitionally equal to `f` to rewrite the left-hand side.
  rw [show (fun y => f y) = f by rfl]
  -- After rewriting, both sides of the equation are the same, so the equality holds by reflexivity.
  <;> rfl