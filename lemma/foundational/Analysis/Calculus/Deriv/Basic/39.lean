import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma HasDerivWithinAt.neg'
    {𝕜 : Type*} [NontriviallyNormedField 𝕜]
    {F : Type*} [NormedAddCommGroup F] [NormedSpace 𝕜 F]
    {s : Set 𝕜} {x : 𝕜} {f : 𝕜 → F} {f' : F}
    (hf : HasDerivWithinAt f f' s x) :
    HasDerivWithinAt (fun y => - f y) (- f') s x := by
  have h_main : HasDerivWithinAt (fun y : 𝕜 => -f y) (-f') s x := by
    have h1 : HasDerivWithinAt (fun y : 𝕜 => -f y) (-f') s x := by
      -- Use the fact that the derivative of -f is the negative of the derivative of f
      convert hf.neg using 1
      <;> simp [neg_neg]
    exact h1
  exact h_main