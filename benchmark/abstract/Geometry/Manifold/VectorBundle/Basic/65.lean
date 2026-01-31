import Mathlib

open scoped Manifold Bundle Topology ContDiff
open Bundle

lemma Bundle.contMDiff_localFrame_coord
    {𝕜 B F : Type*} {E : B → Type*}
    [NontriviallyNormedField 𝕜]
    [TopologicalSpace B]
    {EB HB : Type*}
    [TopologicalSpace EB] [TopologicalSpace HB]
    [NormedAddCommGroup EB] [NormedSpace 𝕜 EB]
    (IB : ModelWithCorners 𝕜 EB HB)
    {n : WithTop ℕ∞}
    [ChartedSpace HB B] [IsManifold IB n B]
    [NormedAddCommGroup F] [NormedSpace 𝕜 F]
    {ι : Type*} [Fintype ι]
    [∀ x, TopologicalSpace (E x)]
    [TopologicalSpace (TotalSpace F E)]
    [∀ x, AddCommMonoid (E x)]
    [∀ x, Module 𝕜 (E x)]
    [FiberBundle F E] [VectorBundle 𝕜 F E]
    [ContMDiffVectorBundle n F E IB]
    (v : ι → ∀ x, E x)
    (hv :
      ∀ i,
        ContMDiff IB (IB.prod 𝓘(𝕜, F)) n
          (fun x ↦ Bundle.TotalSpace.mk' F x (v i x))) :
    ∀ (e : Trivialization F (π F E)) [MemTrivializationAtlas e],
      ContMDiff IB 𝓘(𝕜, (ι → F)) n
        (fun x ↦ fun i ↦ (e ⟨x, v i x⟩).2) := by
  sorry