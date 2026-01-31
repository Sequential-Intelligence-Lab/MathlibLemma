import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma derivWithin_inter_eq_derivWithin_inter'
    {𝕜 : Type*} [NontriviallyNormedField 𝕜]
    (f : 𝕜 → 𝕜) (s t : Set 𝕜) (x : 𝕜) :
    derivWithin f (s ∩ t) x = derivWithin f (t ∩ s) x := by
  -- Use the commutativity of set intersection to show that s ∩ t = t ∩ s
  rw [Set.inter_comm]
  -- Since the sets are equal, the derivatives within these sets are also equal
  <;> rfl