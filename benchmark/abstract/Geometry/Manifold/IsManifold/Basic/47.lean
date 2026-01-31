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
/-- 48. On a manifold modeled on a finite-dimensional normed space, tangent spaces are
finite-dimensional. -/
lemma TangentSpace.finiteDimensional
    (I : ModelWithCorners 𝕜 E H)
    [FiniteDimensional 𝕜 E]
    {M : Type*} [TopologicalSpace M] [ChartedSpace H M]
    (x : M) :
    FiniteDimensional 𝕜 (TangentSpace I x) := by
  sorry
