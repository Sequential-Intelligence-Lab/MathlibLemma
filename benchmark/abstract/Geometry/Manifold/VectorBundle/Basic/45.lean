import Mathlib

open scoped Manifold Bundle Topology ContDiff

variable {𝕜 B B' F M M' : Type*} {E : B → Type*} {E₁ E₂ : B → Type*}
variable {EB : Type*} {EM : Type*} {HB : Type*} {HM : Type*}

variable [NontriviallyNormedField 𝕜]
variable [TopologicalSpace HB] [TopologicalSpace EB]
variable [TopologicalSpace HM] [TopologicalSpace EM]

variable [NormedAddCommGroup EB] [NormedSpace 𝕜 EB]
variable [NormedAddCommGroup EM] [NormedSpace 𝕜 EM]

variable {IB : ModelWithCorners 𝕜 EB HB} {IM : ModelWithCorners 𝕜 EM HM}
variable {n : WithTop ℕ∞}

/-- 46. Smoothness of fiber coordinate in coordinates of base and total space -/
lemma Bundle.contMDiffAt_fiber_coord_extChart
    [TopologicalSpace B] [ChartedSpace HB B] [IsManifold IB n B]
    [NormedAddCommGroup F] [NormedSpace 𝕜 F]
    [TopologicalSpace (TotalSpace F E)] [∀ x, TopologicalSpace (E x)]
    [∀ x, AddCommMonoid (E x)] [∀ x, Module 𝕜 (E x)]
    [FiberBundle F E] [VectorBundle 𝕜 F E] [ContMDiffVectorBundle n F E IB]
    (x : TotalSpace F E) :
    ContMDiffAt (IB.prod 𝓘(𝕜, F)) 𝓘(𝕜, F) n
      (fun y ↦ (extChartAt (IB.prod 𝓘(𝕜, F)) x y).2) x := by
  sorry