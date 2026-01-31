import Mathlib

variable {𝕜 : Type*} [NontriviallyNormedField 𝕜]
variable {E : Type*} [NormedAddCommGroup E] [NormedSpace 𝕜 E]
variable {E' : Type*} [NormedAddCommGroup E'] [NormedSpace 𝕜 E']
variable {F : Type*} [NormedAddCommGroup F] [NormedSpace 𝕜 F]
variable {H : Type*} [TopologicalSpace H]
variable {H' : Type*} [TopologicalSpace H']
variable {I : ModelWithCorners 𝕜 E H}
variable {I' : ModelWithCorners 𝕜 E' H'}
variable {M : Type*} [TopologicalSpace M] [ChartedSpace H M] [IsManifold I 1 M]
variable {M' : Type*} [TopologicalSpace M'] [ChartedSpace H' M'] [IsManifold I' 1 M']
variable {N : Type*} [TopologicalSpace N] [ChartedSpace H N] [IsManifold I 1 N]
variable {P : Type*} [TopologicalSpace P] [ChartedSpace H P] [IsManifold I 1 P]
variable {n : WithTop ℕ∞}

/-! ### Extra lemmas about `contDiffOn_fderiv_coord_change` and coordinate changes -/
lemma inTangentCoordinates_id_left
    (f : N → M) (g : N → M') (ϕ : N → E →L[𝕜] E') :
    inTangentCoordinates I I' f g ϕ = fun x₀ x ↦
      (tangentBundleCore I' M').coordChange
        (achart H' (g x)) (achart H' (g x₀)) (g x) ∘L
      ϕ x ∘L
      (tangentBundleCore I M).coordChange
        (achart H (f x₀)) (achart H (f x)) (f x) := by
  sorry