import Mathlib

open scoped Manifold Bundle Topology ContDiff

variable {𝕜 B F : Type*}

lemma Bundle.contMDiff_section_sub
    [NontriviallyNormedField 𝕜]
    [TopologicalSpace B]
    {HB : Type*}
    [NormedAddCommGroup HB] [NormedSpace 𝕜 HB] [TopologicalSpace HB]
    (IB : ModelWithCorners 𝕜 HB HB)
    [ChartedSpace HB B] [IsManifold IB (⊤ : WithTop ℕ∞) B]
    [NormedAddCommGroup F] [NormedSpace 𝕜 F]
    (E : B → Type*)
    [∀ x, TopologicalSpace (E x)]
    [∀ x, AddCommGroup (E x)]
    [∀ x, Module 𝕜 (E x)]
    [TopologicalSpace (Bundle.TotalSpace F E)]
    [FiberBundle F E] [VectorBundle 𝕜 F E]
    [ContMDiffVectorBundle (⊤ : WithTop ℕ∞) F E IB]
    (s₁ s₂ : ∀ x, E x)
    (hs₁ :
      ContMDiff IB (IB.prod 𝓘(𝕜, F)) (⊤ : WithTop ℕ∞)
        (fun x ↦ Bundle.TotalSpace.mk' F x (s₁ x)))
    (hs₂ :
      ContMDiff IB (IB.prod 𝓘(𝕜, F)) (⊤ : WithTop ℕ∞)
        (fun x ↦ Bundle.TotalSpace.mk' F x (s₂ x))) :
    ContMDiff IB (IB.prod 𝓘(𝕜, F)) (⊤ : WithTop ℕ∞)
      (fun x ↦ Bundle.TotalSpace.mk' F x (s₁ x - s₂ x)) := by
  sorry