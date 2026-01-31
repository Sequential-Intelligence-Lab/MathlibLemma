import Mathlib

open scoped Manifold Bundle Topology ContDiff

variable {𝕜 B : Type*}
variable {F : Type*} {E : B → Type*}
variable {n : WithTop ℕ∞}

/-- Smoothness of the product of two maps between total spaces of bundles. -/
lemma Bundle.contMDiff_prod_totalSpace_map
    [NontriviallyNormedField 𝕜]
    [TopologicalSpace B]
    (EB HB : Type*) [NormedAddCommGroup EB] [NormedSpace 𝕜 EB]
    [TopologicalSpace HB]
    (IB : ModelWithCorners 𝕜 EB HB)
    [ChartedSpace HB B]
    (F₁ : Type*) [NormedAddCommGroup F₁] [NormedSpace 𝕜 F₁]
    (F₂ : Type*) [NormedAddCommGroup F₂] [NormedSpace 𝕜 F₂]
    (E₁ : B → Type*)
    [∀ x, TopologicalSpace (E₁ x)]
    [∀ x, AddCommMonoid (E₁ x)]
    [∀ x, AddGroup (E₁ x)]
    [∀ x, Module 𝕜 (E₁ x)]
    (E₂ : B → Type*)
    [∀ x, TopologicalSpace (E₂ x)]
    [∀ x, AddCommMonoid (E₂ x)]
    [∀ x, AddGroup (E₂ x)]
    [∀ x, Module 𝕜 (E₂ x)]
    [TopologicalSpace (TotalSpace F₁ E₁)] [TopologicalSpace (TotalSpace F₂ E₂)]
    [FiberBundle F₁ E₁] [FiberBundle F₂ E₂]
    [NormedAddCommGroup F] [NormedSpace 𝕜 F]
    (E : B → Type*)
    [∀ x, TopologicalSpace (E x)]
    [∀ x, AddCommMonoid (E x)]
    [∀ x, AddGroup (E x)]
    [∀ x, Module 𝕜 (E x)]
    [TopologicalSpace (TotalSpace F E)]
    [FiberBundle F E] [VectorBundle 𝕜 F E]
    [ContMDiffVectorBundle n F E IB]
    (f₁ : TotalSpace F E → TotalSpace F₁ E₁)
    (f₂ : TotalSpace F E → TotalSpace F₂ E₂)
    (hf₁ :
      ContMDiff (IB.prod 𝓘(𝕜, F)) (IB.prod 𝓘(𝕜, F₁)) n f₁)
    (hf₂ :
      ContMDiff (IB.prod 𝓘(𝕜, F)) (IB.prod 𝓘(𝕜, F₂)) n f₂) :
    ContMDiff (IB.prod 𝓘(𝕜, F))
      ((IB.prod 𝓘(𝕜, F₁)).prod (IB.prod 𝓘(𝕜, F₂))) n
      (fun p ↦ (f₁ p, f₂ p)) := by
  sorry