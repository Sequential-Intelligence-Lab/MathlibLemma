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

/-- 26. Different `ModelWithCorners` with same underlying partial equiv and same convex range
coincide. -/
lemma ModelWithCorners.eq_of_toPartialEquiv_eq
    (I J : ModelWithCorners 𝕜 E H)
    (h : I.toPartialEquiv = J.toPartialEquiv) :
    I = J := by
  cases I <;> cases J <;> cases h <;> rfl