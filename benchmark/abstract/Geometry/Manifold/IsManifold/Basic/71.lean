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
/-- 72. `IsManifold` on a product is characterized by smoothness of component atlases. -/
lemma IsManifold.prod_iff
    (I : ModelWithCorners 𝕜 E H)
    (J : ModelWithCorners 𝕜 E' H')
    (n : WithTop ℕ∞)
    {M : Type*} [TopologicalSpace M] [ChartedSpace H M]
    {N : Type*} [TopologicalSpace N] [ChartedSpace H' N] :
    IsManifold (I.prod J) n (M × N) ↔
      IsManifold I n M ∧ IsManifold J n N := by
  sorry
