import Mathlib

open scoped Manifold Bundle Topology ContDiff
open Bundle

variable {𝕜 B F : Type*} {E : B → Type*}
variable {EB : Type*} {HB : Type*}

variable [NontriviallyNormedField 𝕜]
variable [TopologicalSpace B] [TopologicalSpace HB]
variable [ChartedSpace HB B]
variable [NormedAddCommGroup EB] [NormedSpace 𝕜 EB]
variable [ChartedSpace HB EB]

variable (IB : ModelWithCorners 𝕜 EB HB)
variable {n : WithTop ℕ∞}

/-- 45. Smoothness of base projection in coordinates -/
lemma Bundle.contMDiffAt_proj_coord
    [NormedAddCommGroup F] [NormedSpace 𝕜 F]
    [TopologicalSpace (TotalSpace F E)] [∀ x, TopologicalSpace (E x)]
    [∀ x, AddCommMonoid (E x)] [∀ x, AddGroup (E x)]
    [∀ x, Module 𝕜 (E x)]
    [FiberBundle F E] [VectorBundle 𝕜 F E] [ContMDiffVectorBundle n F E IB]
    (x : TotalSpace F E) :
    ContMDiffAt (IB.prod 𝓘(𝕜, F)) IB n
      (fun y ↦ (extChartAt IB x.proj (π F E y))) x := by
  sorry