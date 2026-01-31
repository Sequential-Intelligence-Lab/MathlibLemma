import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat


lemma derivWithin_div'
    {𝕜 : Type*} [NontriviallyNormedField 𝕜]
    (f g : 𝕜 → 𝕜) (s : Set 𝕜) (x : 𝕜) (hx : g x ≠ 0) :
    derivWithin (fun y => f y / g y) s x =
      (derivWithin f s x * g x - f x * derivWithin g s x) / (g x)^2 := by
  sorry