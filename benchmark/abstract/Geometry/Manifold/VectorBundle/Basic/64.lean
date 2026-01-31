import Mathlib

open scoped Manifold Bundle Topology ContDiff

variable {𝕜 B HB EB : Type*}

variable [NontriviallyNormedField 𝕜]
variable [TopologicalSpace B]
variable [TopologicalSpace HB]
variable [NormedAddCommGroup EB]
variable [NormedSpace 𝕜 EB]
variable [ChartedSpace HB B]

variable {IB : ModelWithCorners 𝕜 EB HB}
variable {n : WithTop ℕ∞}

/-- 65. Stability of `ContMDiffVectorBundle` under finite products. -/
lemma Bundle.contMDiffVectorBundle_pi
    (ι : Type*) [Fintype ι]
    (F : ι → Type*)
    [∀ i, NormedAddCommGroup (F i)]
    [∀ i, NormedSpace 𝕜 (F i)]
    (E : ι → B → Type*)
    [∀ i x, TopologicalSpace (E i x)]
    [∀ i x, AddCommMonoid (E i x)]
    [∀ i x, Sub (E i x)]
    [∀ i x, Add (E i x)]
    [∀ i x, SMul 𝕜 (E i x)]
    [∀ i x, Module 𝕜 (E i x)]
    [∀ i, TopologicalSpace (Sigma (E i))]
    [∀ i, TopologicalSpace (TotalSpace (F i) fun x => E i x)]
    [∀ i, FiberBundle (F i) (fun x => E i x)]
    [∀ i, VectorBundle 𝕜 (F i) (fun x => E i x)]
    [∀ i, ContMDiffVectorBundle n (F i) (fun x => E i x) IB]
    [TopologicalSpace (TotalSpace ((i : ι) → F i) fun x => (i : ι) → E i x)]
    [FiberBundle ((i : ι) → F i) (fun x => (i : ι) → E i x)]
    [VectorBundle 𝕜 ((i : ι) → F i) (fun x => (i : ι) → E i x)] :
    ContMDiffVectorBundle n ((i : ι) → F i) (fun x : B ↦ (i : ι) → E i x) IB := by
  sorry