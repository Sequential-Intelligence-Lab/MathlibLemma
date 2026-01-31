import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma HasDerivAtFilter.const_smul'
    {𝕜 : Type*} [NontriviallyNormedField 𝕜]
    {F : Type*} [NormedAddCommGroup F] [NormedSpace 𝕜 F]
    {x : 𝕜} {L : Filter 𝕜}
    (c : 𝕜) {f : 𝕜 → F} {f' : F}
    (hf : HasDerivAtFilter f f' x L) :
    HasDerivAtFilter (fun y => c • f y) (c • f') x L := by
  -- Use the definition of the derivative with respect to a filter
  refine' hf.const_smul c
  -- Simplify the expression using the properties of scalar multiplication
  <;> simp_all
  -- Apply the limit properties to conclude the proof
  <;> apply Filter.tendsto.const_smul
  <;> simp_all