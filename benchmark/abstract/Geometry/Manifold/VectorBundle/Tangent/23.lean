import Mathlib

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
lemma tangentBundle_coordChange_chartAt
    [IsManifold I 1 M]
    (p q r : TangentBundle I M) :
    ∀ᶠ x in (nhds r : Filter (TangentBundle I M)),
      (chartAt (ModelProd H E) q
        ((chartAt (ModelProd H E) p).symm
          ((chartAt (ModelProd H E) r) x))) =
      ((chartAt (ModelProd H E) q) ∘
        (chartAt (ModelProd H E) p).symm ∘
        (chartAt (ModelProd H E) r)) x := by
  sorry

/-! ### Extra lemmas on trivializations and continuous linear maps on fibers -/