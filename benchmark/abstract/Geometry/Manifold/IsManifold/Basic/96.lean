import Mathlib

/-
All lemmas below are intentionally left with `sorry` proofs. They are meant
as candidates for future additions to mathlib, inspired by the file on
`ModelWithCorners` and `IsManifold`.
-/

variable {𝕜 : Type*} [NontriviallyNormedField 𝕜]
variable {E : Type*} [NormedAddCommGroup E] [NormedSpace 𝕜 E]
variable {E' : Type*} [NormedAddCommGroup E'] [NormedSpace 𝕜 E']
variable {F : Type*} [NormedAddCommGroup F] [NormedSpace 𝕜 F]
variable {H : Type*} [TopologicalSpace H]
variable {H' : Type*} [TopologicalSpace H']
variable {G : Type*} [TopologicalSpace G]

open Set Filter Function Topology

/-- 97. The tangent space functor is compatible with products of manifolds. -/
noncomputable def TangentSpace.prod_equiv
    (I : ModelWithCorners 𝕜 E H) (J : ModelWithCorners 𝕜 E' H')
    {M : Type*} [TopologicalSpace M] [ChartedSpace H M]
    {N : Type*} [TopologicalSpace N] [ChartedSpace H' N]
    (x : M) (y : N) :
    TangentSpace (I.prod J) (x, y) ≃ₗ[𝕜]
      (TangentSpace I x × TangentSpace J y) := by
  sorry