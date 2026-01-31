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

/-- 76. A `C^n` structure for `n ≥ 1` implies continuity of coordinate changes.

This states continuity of the map in chart coordinates
`H → H, z ↦ chartAt H y (chartAt H x).symm z`, on the natural domain where it
is defined. The proof is intentionally omitted. -/
lemma IsManifold.continuous_change_of_coord
    (I : ModelWithCorners 𝕜 E H) (n : WithTop ℕ∞)
    {M : Type*} [TopologicalSpace M] [ChartedSpace H M]
    [IsManifold I n M] (x y : M) :
    ContinuousOn
      (fun z : H =>
        (chartAt H y : M → H) ((chartAt H x).symm z))
      (((chartAt H x).symm : H → M) ⁻¹' (chartAt H x).source ∩
        ((chartAt H x).symm : H → M) ⁻¹' (chartAt H y).source) := by
  sorry