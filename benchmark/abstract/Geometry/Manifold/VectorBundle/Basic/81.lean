import Mathlib

open scoped Manifold Bundle Topology ContDiff

variable {𝕜 B F : Type*}
variable {EB HB : Type*}

-- Basic structure for the model with corners
variable [NontriviallyNormedField 𝕜]
variable [TopologicalSpace EB] [NormedAddCommGroup EB] [NormedSpace 𝕜 EB]
variable [TopologicalSpace HB]

variable (IB : ModelWithCorners 𝕜 EB HB)

lemma Bundle.morphism_contMDiff_iff_trivialization
    [TopologicalSpace B]
    [ChartedSpace HB B]
    {n : WithTop ℕ∞}
    [IsManifold IB n B]
    [NormedAddCommGroup F] [NormedSpace 𝕜 F]
    (E₁ E₂ : B → Type*)
    -- Topology on the fibers
    [∀ x, TopologicalSpace (E₁ x)] [∀ x, TopologicalSpace (E₂ x)]
    -- Algebraic structure on the fibers (so that `VectorBundle` makes sense)
    [∀ x, AddCommMonoid (E₁ x)] [∀ x, AddCommMonoid (E₂ x)]
    [∀ x, AddCommGroup (E₁ x)]  [∀ x, AddCommGroup (E₂ x)]
    [∀ x, Module 𝕜 (E₁ x)]      [∀ x, Module 𝕜 (E₂ x)]
    -- Topology on total spaces
    [TopologicalSpace (TotalSpace F E₁)] [TopologicalSpace (TotalSpace F E₂)]
    -- Bundle structures
    [FiberBundle F E₁] [FiberBundle F E₂]
    [VectorBundle 𝕜 F E₁] [VectorBundle 𝕜 F E₂]
    [ContMDiffVectorBundle n F E₁ IB] [ContMDiffVectorBundle n F E₂ IB]
    (φ : TotalSpace F E₁ → TotalSpace F E₂)
    (projφ : ∀ p, (φ p).proj = p.proj) :
    (ContMDiff (IB.prod 𝓘(𝕜, F)) (IB.prod 𝓘(𝕜, F)) n φ) ↔
    ∀ (e₁ : Trivialization F (π F E₁)) (e₂ : Trivialization F (π F E₂))
      [MemTrivializationAtlas e₁] [MemTrivializationAtlas e₂],
      ContMDiffOn (IB.prod 𝓘(𝕜, F)) (IB.prod 𝓘(𝕜, F)) n
        (fun p ↦
          e₂ (φ (e₁.toOpenPartialHomeomorph.symm p)))
        (e₁.target ∩ e₂.target) := by
  sorry