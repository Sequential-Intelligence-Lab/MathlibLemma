import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat


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
/-- 19. Continuity of `I` can be restated using its `toHomeomorph`. -/
theorem ModelWithCorners.continuous_iff_toHomeomorph
    (I : ModelWithCorners 𝕜 E H) [I.Boundaryless] :
    Continuous (I : H → E) ↔
    Continuous I.toHomeomorph := by
  have h1 : I.Boundaryless := by infer_instance
  have h2 : (I : H → E) = I.toHomeomorph := by
    funext x
    simp [h1]
  rw [h2]