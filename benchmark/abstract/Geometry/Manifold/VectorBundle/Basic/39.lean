import Mathlib

open Bundle

variable {𝕜 B F : Type*} {E : B → Type*}
variable {EB : Type*} {HB : Type*}

variable [TopologicalSpace HB]
variable [NontriviallyNormedField 𝕜]
variable [NormedAddCommGroup EB]
variable [NormedSpace 𝕜 EB]

variable {IB : ModelWithCorners 𝕜 EB HB}
variable {n : WithTop ℕ∞}

open scoped Manifold Bundle Topology ContDiff

-- 40. Smoothness of the fiber coordinate in a bundle chart
lemma FiberBundle.contMDiff_chartAt_fiberCoord
    [TopologicalSpace B] [ChartedSpace HB B] [IsManifold IB n B]
    [NormedAddCommGroup F] [NormedSpace 𝕜 F]
    [∀ x, TopologicalSpace (E x)]
    [∀ x, NormedAddCommGroup (E x)] [∀ x, NormedSpace 𝕜 (E x)]
    [TopologicalSpace (TotalSpace F E)]
    [FiberBundle F E]
    [VectorBundle 𝕜 F E] [ContMDiffVectorBundle n F E IB]
    [ChartedSpace (HB × F) (TotalSpace F E)]
    (x : TotalSpace F E) :
    ContMDiffAt (IB.prod 𝓘(𝕜, F)) 𝓘(𝕜, F) n
      (fun y ↦ (chartAt (HB × F) y y).2) x := by
  sorry