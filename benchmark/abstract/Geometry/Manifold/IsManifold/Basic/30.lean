import Mathlib

/-
All lemmas below are intentionally left with `sorry` proofs. They are meant
as candidates for future additions to mathlib, inspired by the file on
`ModelWithCorners` and `IsManifold`.
-/

open scoped Manifold

variable {𝕜 : Type*} [NontriviallyNormedField 𝕜]
variable {E : Type*} [NormedAddCommGroup E] [NormedSpace 𝕜 E]
variable {E' : Type*} [NormedAddCommGroup E'] [NormedSpace 𝕜 E']
variable {F : Type*} [NormedAddCommGroup F] [NormedSpace 𝕜 F]
variable {H : Type*} [TopologicalSpace H]
variable {H' : Type*} [TopologicalSpace H']
variable {G : Type*} [TopologicalSpace G]

open Set Filter Function Topology

/-- 31. The `contDiffGroupoid` of the tangent model equals the product `contDiffGroupoid`. -/
lemma contDiffGroupoid_tangent_eq_prod
    (I : ModelWithCorners 𝕜 E H) (n : WithTop ℕ∞) :
    contDiffGroupoid n I.tangent =
      contDiffGroupoid n (I.prod (𝓘(𝕜, E))) := by
  sorry