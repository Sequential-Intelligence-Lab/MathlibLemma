import Mathlib

open scoped Manifold
open TopologicalSpace

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
lemma mfderivWithin_eq_zero_of_locally_const
    {s : Set E} {f : E → F} {x : E}
    (hf : ∀ᶠ y in nhdsWithin x s, ∀ z ∈ s, f z = f y) :
    mfderivWithin 𝓘(𝕜, E) 𝓘(𝕜, F) f s x = 0 := by
  sorry