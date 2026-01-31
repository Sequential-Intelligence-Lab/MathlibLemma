import Mathlib

variable {𝕜 : Type*} [NontriviallyNormedField 𝕜]
variable {E : Type*} [NormedAddCommGroup E] [NormedSpace 𝕜 E]
variable {F : Type*} [NormedAddCommGroup F] [NormedSpace 𝕜 F]
variable {G : Type*} [NormedAddCommGroup G] [NormedSpace 𝕜 G]
variable {H : Type*} [NormedAddCommGroup H] [NormedSpace 𝕜 H]

open Filter Set Topology

/-- 65. Strict derivative of the inverse function for `𝕜 → 𝕜`. -/
lemma HasStrictDerivAt.inv_local
    {f : 𝕜 → 𝕜} {f' : 𝕜} {x : 𝕜}
    (hf : HasStrictDerivAt f f' x) (h' : f' ≠ 0) :
    HasStrictDerivAt (fun y => (sorry : 𝕜)) (1 / f') (f x) := by
  -- placeholder inverse function theorem in one-dim scalar case
  sorry