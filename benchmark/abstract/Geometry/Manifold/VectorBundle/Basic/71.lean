import Mathlib

open scoped Manifold Bundle Topology ContDiff

variable {𝕜 B F : Type*}
variable [NontriviallyNormedField 𝕜]
variable [TopologicalSpace B]

variable {E : B → Type*}
variable {EB HB : Type*}
variable [TopologicalSpace EB] [TopologicalSpace HB]
variable [NormedAddCommGroup EB] [NormedAddCommGroup HB]
variable [NormedSpace 𝕜 EB] [NormedSpace 𝕜 HB]
variable [ChartedSpace HB B]

variable (IB : ModelWithCorners 𝕜 EB HB)
variable {n : WithTop ℕ∞}

/-- 72. Smoothness of pointwise addition of two smooth sections -/
lemma Bundle.contMDiff_section_add
    [NormedAddCommGroup F] [NormedSpace 𝕜 F]
    (E : B → Type*)
    [∀ x, TopologicalSpace (E x)]
    [∀ x, AddCommMonoid (E x)]
    [∀ x, Module 𝕜 (E x)]
    [TopologicalSpace (TotalSpace F E)]
    [ChartedSpace (HB × F) (TotalSpace F E)]
    [FiberBundle F E] [VectorBundle 𝕜 F E]
    [ContMDiffVectorBundle n F E IB]
    (s₁ s₂ : ∀ x, E x)
    (hs₁ :
      ContMDiff IB (IB.prod 𝓘(𝕜, F)) n
        (fun x ↦ Bundle.TotalSpace.mk' F x (s₁ x)))
    (hs₂ :
      ContMDiff IB (IB.prod 𝓘(𝕜, F)) n
        (fun x ↦ Bundle.TotalSpace.mk' F x (s₂ x))) :
    ContMDiff IB (IB.prod 𝓘(𝕜, F)) n
      (fun x ↦ Bundle.TotalSpace.mk' F x (s₁ x + s₂ x)) := by
  sorry