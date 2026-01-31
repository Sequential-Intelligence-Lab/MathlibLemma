import Mathlib


variable {𝕜 : Type*} [NontriviallyNormedField 𝕜]
variable {E : Type*} [NormedAddCommGroup E] [NormedSpace 𝕜 E]
variable {F : Type*} [NormedAddCommGroup F] [NormedSpace 𝕜 F]
variable {G : Type*} [NormedAddCommGroup G] [NormedSpace 𝕜 G]
variable {H : Type*} [NormedAddCommGroup H] [NormedSpace 𝕜 H]

open Filter Set Topology
/-- 35. For an `OpenPartialHomeomorph`, the restriction to the source is an open map. -/
lemma OpenPartialHomeomorph.isOpenMap_coe
    {E F : Type*} [TopologicalSpace E] [TopologicalSpace F]
    (e : OpenPartialHomeomorph E F) :
    IsOpenMap fun x : e.source => e x := by
  sorry
