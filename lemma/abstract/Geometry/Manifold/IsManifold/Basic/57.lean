import Mathlib


/-
All lemmas below are intentionally left with `sorry` proofs. They are meant
as candidates for future additions to mathlib, inspired by the file on
`ModelWithCorners` and `IsManifold`.
-/

variable {𝕜 : Type*} [NontriviallyNormedField 𝕜]
variable {E : Type*} [NormedAddCommGroup E] [NormedSpace 𝕜 E]
variable {E' : Type*} [NormedAddCommGroup E'] [NormedSpace 𝕜 E']
variable {F : Type*} [NormedAddCommGroup F] [NormedSpace 𝕜 F]
variable {H : Type*} [TopologicalSpace H]
variable {H' : Type*} [TopologicalSpace H']
variable {G : Type*} [TopologicalSpace G]

open Set Filter Function Topology

/-- 58. `IsManifold` plus compactness implies finite atlas. -/
lemma IsManifold.finite_subatlas_of_compact
    (I : ModelWithCorners 𝕜 E H) (n : WithTop ℕ∞)
    {M : Type*} [TopologicalSpace M] [ChartedSpace H M]
    [IsManifold I n M] [CompactSpace M] :
    ∃ A : Finset (OpenPartialHomeomorph M H),
      (↑A : Set (OpenPartialHomeomorph M H)) ⊆ atlas H M ∧
      (⋃ e ∈ A, e.source) = (univ : Set M) := by
  classical
  -- Indexing type: charts in the atlas
  let ι := {e : OpenPartialHomeomorph M H // e ∈ atlas H M}
  -- The open sets are the sources of these charts
  let U : ι → Set M := fun e => e.1.source

  -- The sources are open
  have hUopen : ∀ i : ι, IsOpen (U i) := by
    intro i
    exact i.1.open_source

  -- The union of all chart sources in the atlas covers `univ`
  have hUcov : (univ : Set M) ⊆ ⋃ i : ι, U i := by
    intro x hx
    -- use the chart at `x`, which is in the atlas and has `x` in its source
    have hmem_atlas : chartAt H x ∈ atlas H M := chart_mem_atlas H x
    have hmem_src : x ∈ (chartAt H x).source := mem_chart_source H x
    -- show membership in the union
    refine mem_iUnion.mpr ?_
    refine ⟨⟨chartAt H x, hmem_atlas⟩, ?_⟩
    -- now membership in the corresponding source
    change x ∈ U ⟨chartAt H x, hmem_atlas⟩
    simpa [U] using hmem_src

  -- compactness of `univ` in a compact space
  have hK : IsCompact (univ : Set M) := isCompact_univ

  -- Extract a finite subcover
  obtain ⟨s, hsub⟩ :=
    hK.elim_finite_subcover (U := U) hUopen hUcov

  -- Turn `s : Finset ι` into a finset of charts
  let A : Finset (OpenPartialHomeomorph M H) :=
    s.image (fun e : ι => e.1)

  refine ⟨A, ?hAsub, ?hcover_eq⟩

  -- The chosen charts all lie in the atlas
  · intro e heA
    -- membership in the image
    rcases Finset.mem_image.1 heA with ⟨e', he's, rfl⟩
    -- `e'` was a subtype with membership in the atlas as property
    exact e'.property

  -- Their sources cover the whole manifold
  · -- we prove equality by mutual inclusion
    apply subset_antisymm
    · -- trivial inclusion of the union into `univ`
      intro x hx
      trivial
    · -- Every point of `M` is in some chosen chart's source
      intro x hx
      -- we know: `univ ⊆ ⋃ i ∈ s, U i`
      have hx' : x ∈ ⋃ i ∈ s, U i := hsub (by simpa using hx)
      -- unpack the finite union
      rcases mem_iUnion.1 hx' with ⟨i, hi⟩
      rcases mem_iUnion.1 hi with ⟨his, hxi⟩
      -- `i` is an element of `ι`, with `i.1` a chart in `A`
      -- from `his : i ∈ s` we get `i.1 ∈ A`
      have hAi : i.1 ∈ A := by
        refine Finset.mem_image.mpr ?_
        exact ⟨i, his, rfl⟩
      -- Now show membership in the desired union over `A`
      refine mem_iUnion.2 ?_
      refine ⟨i.1, mem_iUnion.2 ?_⟩
      refine ⟨hAi, ?_⟩
      -- finally, `x ∈ i.1.source`
      change x ∈ i.1.source
      simpa [U] using hxi