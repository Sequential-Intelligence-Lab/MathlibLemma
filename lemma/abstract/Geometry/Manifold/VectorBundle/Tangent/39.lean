import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

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

lemma contDiff_vectorSpace_iff_contMDiff_tangent
    {V : Π x : E, TangentSpace (modelWithCornersSelf 𝕜 E) x} :
    ContDiff 𝕜 n V ↔
    ContMDiff (modelWithCornersSelf 𝕜 E)
      (modelWithCornersSelf 𝕜 E).tangent n
      (fun x ↦ (V x : TangentBundle (modelWithCornersSelf 𝕜 E) E)) := by
  have h_main : ContDiff 𝕜 n V ↔ ContMDiff (modelWithCornersSelf 𝕜 E) (modelWithCornersSelf 𝕜 E).tangent n (fun x ↦ (V x : TangentBundle (modelWithCornersSelf 𝕜 E) E)) := by
    constructor
    · -- Prove the forward direction: if V is ContDiff, then the function is ContMDiff
      intro h
      -- Use the fact that V is ContDiff to show that the corresponding function is ContMDiff
      sorry
    · -- Prove the reverse direction: if the function is ContMDiff, then V is ContDiff
      intro h
      -- Use the fact that the function is ContMDiff to show that V is ContDiff
      sorry
  exact h_main