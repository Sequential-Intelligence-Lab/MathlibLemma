import Mathlib

open scoped Manifold Bundle Topology ContDiff

variable {𝕜 B F : Type*} {E : B → Type*}
variable {EB HB : Type*}
variable {n : WithTop ℕ∞}

lemma VectorPrebundle.isContMDiff_coordChange_comp_chart
    [NontriviallyNormedField 𝕜]
    [TopologicalSpace B] [TopologicalSpace HB] [ChartedSpace HB B]
    [TopologicalSpace EB] [NormedAddCommGroup EB] [NormedSpace 𝕜 EB]
    (IB : ModelWithCorners 𝕜 EB HB)
    [NormedAddCommGroup F] [NormedSpace 𝕜 F]
    [∀ x, TopologicalSpace (E x)]
    [∀ x, AddCommMonoid (E x)]
    [∀ x, Module 𝕜 (E x)]
    [TopologicalSpace (Bundle.TotalSpace F E)]
    (a : VectorPrebundle 𝕜 F E) [a.IsContMDiff IB n]
    {e e' : Pretrivialization F Bundle.TotalSpace.proj}
    (he : e ∈ a.pretrivializationAtlas) (he' : e' ∈ a.pretrivializationAtlas)
    (x₀ : B) :
    ContMDiffAt IB 𝓘(𝕜, F →L[𝕜] F) n
      (fun b ↦ a.contMDiffCoordChange n IB he he' b) x₀ := by
  sorry