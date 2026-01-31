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

/-- 36. A `C^∞` manifold is in particular a `C^n` manifold. (alternative statement) -/
lemma IsManifold.of_infty_le
    {M : Type*} [TopologicalSpace M] [ChartedSpace H M]
    (I : ModelWithCorners 𝕜 E H) {n : ℕ∞}
    [IsManifold I (⊤ : ℕ∞) M] :
    IsManifold I n M := by
  sorry