import Mathlib

open Manifold

-- Provide the standard notation 𝓘(𝕜, E) in this file
local notation "𝓘(" 𝕜 ", " E ")" => (ContinuousLinearMap.instModelWithCornersSelf 𝕜 E)

variable {𝕜 : Type*} [NontriviallyNormedField 𝕜]
variable {E : Type*} [NormedAddCommGroup E] [NormedSpace 𝕜 E]
variable {E' : Type*} [NormedAddCommGroup E'] [NormedSpace 𝕜 E']
variable {F : Type*} [NormedAddCommGroup F] [NormedSpace 𝕜 F]
variable {H : Type*} [TopologicalSpace H]
variable {H' : Type*} [TopologicalSpace H']
variable {I : ModelWithCorners 𝕜 E H}
variable {I' : ModelWithCorners 𝕜 E' H'}
variable {M : Type*} [TopologicalSpace M] [ChartedSpace H M]
variable {M' : Type*} [TopologicalSpace M'] [ChartedSpace H' M']
variable {N : Type*} [TopologicalSpace N] [ChartedSpace H N]
variable {P : Type*} [TopologicalSpace P] [ChartedSpace H P]
variable {n : WithTop ℕ∞}

/-! ### Extra lemmas about `contDiffOn_fderiv_coord_change` and coordinate changes -/
lemma contDiffOn_vectorSpace_iff_contMDiffOn_tangent
    {V : Π x : E, TangentSpace 𝓘(𝕜, E) x}
    {s : Set E} :
    ContDiffOn 𝕜 n V s ↔
    ContMDiffOn 𝓘(𝕜, E) 𝓘(𝕜, E).tangent n
      (fun x ↦ (V x : TangentBundle 𝓘(𝕜, E) E)) s := by
  sorry