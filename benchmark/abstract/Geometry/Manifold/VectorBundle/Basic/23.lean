import Mathlib

open scoped Manifold Bundle Topology ContDiff

variable {𝕜 B B' F : Type*} {E : B → Type*}
variable {HB : Type*} 

variable [NontriviallyNormedField 𝕜]
variable [TopologicalSpace HB]
variable [NormedAddCommGroup HB] [NormedSpace 𝕜 HB]

variable {IB : ModelWithCorners 𝕜 HB HB}
variable {n : WithTop ℕ∞}

lemma Bundle.contMDiff_coordChange_prod_base
    [TopologicalSpace B] [TopologicalSpace B']
    [ChartedSpace HB B] [ChartedSpace HB B']
    [NormedAddCommGroup F] [NormedSpace 𝕜 F]
    [TopologicalSpace (TotalSpace F E)] [∀ x, TopologicalSpace (E x)]
    [∀ x, AddCommMonoid (E x)] [∀ x, Module 𝕜 (E x)]
    [FiberBundle F E] [VectorBundle 𝕜 F E]
    [ContMDiffVectorBundle n F E IB]
    (f : B' → B) (hf : ContMDiff IB IB n f)
    (e e' : Trivialization F (Bundle.TotalSpace.proj (F := F) (E := E)))
    [MemTrivializationAtlas e] [MemTrivializationAtlas e'] :
    ContMDiffOn IB 𝓘(𝕜, F →L[𝕜] F) n
      (fun b' ↦ (e.coordChangeL 𝕜 e' (f b') : F →L[𝕜] F))
      (f ⁻¹' (e.baseSet ∩ e'.baseSet)) := by
  sorry