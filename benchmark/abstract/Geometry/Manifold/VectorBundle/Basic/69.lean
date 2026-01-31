import Mathlib

open scoped Manifold Bundle Topology ContDiff

variable {𝕜 B B' F M M' : Type*}
variable {E : B → Type*} {E₁ E₂ : B → Type*}
variable {EB : Type*} {EM : Type*} {HB : Type*} {HM : Type*}

variable [NontriviallyNormedField 𝕜]
variable [NormedAddCommGroup EB] [NormedSpace 𝕜 EB] [TopologicalSpace EB]
variable [NormedAddCommGroup EM] [NormedSpace 𝕜 EM] [TopologicalSpace EM]
variable [TopologicalSpace HB] [TopologicalSpace HM]

variable {IB : ModelWithCorners 𝕜 EB HB}
variable {IM : ModelWithCorners 𝕜 EM HM}
variable {n : WithTop ℕ∞}

-- 70. Smoothness of evaluation of smooth section along smooth curve
lemma Bundle.contMDiff_curve_section_eval
    [TopologicalSpace B]
    [ChartedSpace HB B] [IsManifold IB n B]
    [TopologicalSpace M]
    [ChartedSpace HM M] [IsManifold IM n M]
    [NormedAddCommGroup F] [NormedSpace 𝕜 F]
    (E : B → Type*)
    [∀ x, TopologicalSpace (E x)]
    [∀ x, AddCommMonoid (E x)]
    [∀ x, AddGroup (E x)]
    [∀ x, Module 𝕜 (E x)]
    [TopologicalSpace (TotalSpace F E)]
    [FiberBundle F E] [VectorBundle 𝕜 F E]
    [ContMDiffVectorBundle n F E IB]
    (s : ∀ x, E x)
    (hs :
      ContMDiff IB (IB.prod 𝓘(𝕜, F)) n
        (fun x ↦ Bundle.TotalSpace.mk' F x (s x)))
    (γ : M → B)
    (hγ : ContMDiff IM IB n γ) :
    ContMDiff IM (IB.prod 𝓘(𝕜, F)) n
      (fun t ↦ Bundle.TotalSpace.mk' F (γ t) (s (γ t))) := by
  sorry