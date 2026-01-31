import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma HasDerivWithinAt.const_smul'
    {𝕜 : Type*} [NontriviallyNormedField 𝕜]
    {s : Set 𝕜} {x : 𝕜}
    {F : Type*} [NormedAddCommGroup F] [NormedSpace 𝕜 F]
    (c : 𝕜) {f : 𝕜 → F} {f' : F}
    (hf : HasDerivWithinAt f f' s x) :
    HasDerivWithinAt (fun y => c • f y) (c • f') s x := by
  have h_main : HasDerivWithinAt (fun y : 𝕜 => c • f y) (c • f') s x := by
    -- Use the fact that scalar multiplication by `c` is a continuous linear map and apply the chain rule
    have h1 : HasDerivWithinAt (fun y : 𝕜 => c • f y) (c • f') s x := by
      -- Use the fact that scalar multiplication by `c` is a continuous linear map and apply the chain rule
      convert hf.const_smul c using 1
      <;> simp [smul_smul]
      <;> ring_nf
      <;> simp_all [smul_smul]
      <;> field_simp
      <;> ring_nf
    exact h1
  exact h_main