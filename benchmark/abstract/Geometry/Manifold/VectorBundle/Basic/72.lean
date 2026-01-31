import Mathlib

open scoped Manifold Bundle Topology ContDiff

variable {𝕜 B F : Type*} {E : B → Type*}
variable {EB HB : Type*}

/-- 73. Smoothness of scalar multiple of a smooth section by a smooth function -/
lemma Bundle.contMDiff_section_smul
    [NontriviallyNormedField 𝕜]
    [TopologicalSpace B]
    [TopologicalSpace HB]
    [NormedAddCommGroup EB]
    [NormedSpace 𝕜 EB]
    (IB : ModelWithCorners 𝕜 EB HB)
    [ChartedSpace HB B]
    [IsManifold IB (n := (⊤ : WithTop ℕ∞)) B]
    [NormedAddCommGroup F]
    [NormedSpace 𝕜 F]
    (E : B → Type*)
    [∀ x, TopologicalSpace (E x)]
    [∀ x, AddCommMonoid (E x)]
    [∀ x, Module 𝕜 (E x)]
    [TopologicalSpace (TotalSpace F E)]
    [FiberBundle F E]
    [VectorBundle 𝕜 F E]
    [ContMDiffVectorBundle (n := (⊤ : WithTop ℕ∞)) F E IB]
    (f : B → 𝕜)
    (hf : ContMDiff IB 𝓘(𝕜, 𝕜) (n := (⊤ : WithTop ℕ∞)) f)
    (s : ∀ x, E x)
    (hs :
      ContMDiff IB (IB.prod 𝓘(𝕜, F)) (n := (⊤ : WithTop ℕ∞))
        (fun x ↦ Bundle.TotalSpace.mk' F x (s x))) :
    ContMDiff IB (IB.prod 𝓘(𝕜, F)) (n := (⊤ : WithTop ℕ∞))
      (fun x ↦ Bundle.TotalSpace.mk' F x (f x • s x)) := by
  sorry