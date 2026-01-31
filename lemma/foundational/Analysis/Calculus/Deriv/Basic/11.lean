import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma HasDerivAt.const_smul'
    {𝕜 : Type*} [NontriviallyNormedField 𝕜]
    {F : Type*} [NormedAddCommGroup F] [NormedSpace 𝕜 F]
    {x : 𝕜} (c : 𝕜) {f : 𝕜 → F} {f' : F}
    (hf : HasDerivAt f f' x) :
    HasDerivAt (fun y => c • f y) (c • f') x := by
  have h_main : HasDerivAt (fun y : 𝕜 => c • f y) (c • f') x := by
    -- Use the fact that the derivative of a scalar multiple is the scalar multiple of the derivative
    convert HasDerivAt.const_smul c hf using 1 <;>
    simp [smul_smul]
    <;>
    ring
  
  exact h_main