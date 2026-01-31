import Mathlib

open Bundle

variable {𝕜 : Type*} [NontriviallyNormedField 𝕜]
variable {E : Type*} [NormedAddCommGroup E] [NormedSpace 𝕜 E]
variable {E' : Type*} [NormedAddCommGroup E'] [NormedSpace 𝕜 E']
variable {F : Type*} [NormedAddCommGroup F] [NormedSpace 𝕜 F]
variable {H : Type*} [TopologicalSpace H]
variable {H' : Type*} [TopologicalSpace H']
variable {I : ModelWithCorners 𝕜 E H}
variable {I' : ModelWithCorners 𝕜 E' H'}
variable {M : Type*} [TopologicalSpace M] [ChartedSpace H M]
variable {M' : Type*} [TopologicalSpace M'] [ChartedSpace H' M']
variable {N : Type*} [TopologicalSpace N] [ChartedSpace H N]
variable {P : Type*} [TopologicalSpace P] [ChartedSpace H P]
variable {n : WithTop ℕ∞}

/-! ### Extra lemmas about `contDiffOn_fderiv_coord_change` and coordinate changes -/
lemma chartAt_tangent_bundle_linear_in_fiber
    [IsManifold I 1 M]
    (q x : TangentBundle I M) :
    ∀ v w : TangentSpace I x.proj,
      (chartAt (ModelProd H E) q ⟨x.proj, v + w⟩).2 =
        (chartAt (ModelProd H E) q ⟨x.proj, v⟩).2 +
        (chartAt (ModelProd H E) q ⟨x.proj, w⟩).2 := by
  sorry