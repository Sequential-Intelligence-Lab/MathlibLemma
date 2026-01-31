import Mathlib

open scoped Manifold Bundle Topology ContDiff

variable {𝕜 B B' F M M' : Type*} {E : B → Type*} {E₁ E₂ : B → Type*}
variable {EB : Type*} {EM : Type*} {HB : Type*} {HM : Type*}
variable [NontriviallyNormedField 𝕜]
variable [NormedAddCommGroup EB] [NormedSpace 𝕜 EB]
variable [NormedAddCommGroup EM] [NormedSpace 𝕜 EM]
variable [TopologicalSpace HB] [TopologicalSpace HM]
variable {IB : ModelWithCorners 𝕜 EB HB} {IM : ModelWithCorners 𝕜 EM HM}
variable {n : WithTop ℕ∞}

/-- Compatibility of `contMDiffWithinAt_totalSpace` with restriction of domain. -/
lemma Bundle.contMDiffWithinAt_totalSpace_restrict
    [NormedAddCommGroup F] [NormedSpace 𝕜 F]
    [TopologicalSpace (TotalSpace F E)] [∀ x, TopologicalSpace (E x)]
    [TopologicalSpace B] [ChartedSpace HB B]
    [FiberBundle F E]
    [TopologicalSpace M] [ChartedSpace HM M]
    {s t : Set M} {x₀ : M} {f : M → TotalSpace F E} (hst : s ⊆ t)
    (h : ContMDiffWithinAt IM (IB.prod 𝓘(𝕜, F)) n f t x₀) :
    ContMDiffWithinAt IM (IB.prod 𝓘(𝕜, F)) n f s x₀ := by
  sorry