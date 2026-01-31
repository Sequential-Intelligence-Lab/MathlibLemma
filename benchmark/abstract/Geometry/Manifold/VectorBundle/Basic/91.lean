import Mathlib

open scoped Manifold Bundle Topology ContDiff

lemma Bundle.contMDiff_whitneySum_proj_fst
    {𝕜 : Type*} [NontriviallyNormedField 𝕜]
    {EB : Type*} [NormedAddCommGroup EB] [NormedSpace 𝕜 EB]
    {n : WithTop ℕ∞}
    (F₁ F₂ : Type*) [NormedAddCommGroup F₁] [NormedAddCommGroup F₂]
    [NormedSpace 𝕜 F₁] [NormedSpace 𝕜 F₂]
    (E₁ : EB → Type*) (E₂ : EB → Type*)
    [∀ x, TopologicalSpace (E₁ x)] [∀ x, TopologicalSpace (E₂ x)]
    [∀ x, NormedAddCommGroup (E₁ x)] [∀ x, NormedAddCommGroup (E₂ x)]
    [∀ x, NormedSpace 𝕜 (E₁ x)] [∀ x, NormedSpace 𝕜 (E₂ x)]
    [TopologicalSpace (TotalSpace F₁ E₁)]
    [TopologicalSpace (TotalSpace F₂ E₂)]
    [TopologicalSpace (TotalSpace (F₁ × F₂) fun x ↦ E₁ x × E₂ x)]
    [FiberBundle F₁ E₁] [FiberBundle F₂ E₂]
    [FiberBundle (F₁ × F₂) fun x ↦ E₁ x × E₂ x]
    [VectorBundle 𝕜 F₁ E₁] [VectorBundle 𝕜 F₂ E₂]
    [VectorBundle 𝕜 (F₁ × F₂) fun x ↦ E₁ x × E₂ x] :
    ContMDiff
      (𝓘(𝕜, EB).prod 𝓘(𝕜, F₁ × F₂))
      (𝓘(𝕜, EB).prod 𝓘(𝕜, F₁))
      n
      (fun p : TotalSpace (F₁ × F₂) (fun x ↦ E₁ x × E₂ x) =>
        (p.proj, (0 : F₁))) := by
  sorry