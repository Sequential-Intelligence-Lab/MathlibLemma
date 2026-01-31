import Mathlib

variable {𝕜 : Type*} [NontriviallyNormedField 𝕜]
variable {E : Type*} [NormedAddCommGroup E] [NormedSpace 𝕜 E]
variable {F : Type*} [NormedAddCommGroup F] [NormedSpace 𝕜 F]
variable {G : Type*} [NormedAddCommGroup G] [NormedSpace 𝕜 G]
variable {H : Type*} [NormedAddCommGroup H] [NormedSpace 𝕜 H]
variable {X : Type*} [TopologicalSpace X]
variable {Y : Type*} [TopologicalSpace Y]
variable {Z : Type*} [TopologicalSpace Z]

variable {ι : Type*}

/-! ## Basic filter / topology lemmas -/
lemma Filter.eventuallyEq_nhds_nhds_iff {α β : Type*} [TopologicalSpace α]
    {x y : α} {f g : α → β} :
    f =ᶠ[nhds x ⊓ nhds y] g ↔
      (f =ᶠ[nhds x] g) ∧ (f =ᶠ[nhds y] g) := by
  sorry