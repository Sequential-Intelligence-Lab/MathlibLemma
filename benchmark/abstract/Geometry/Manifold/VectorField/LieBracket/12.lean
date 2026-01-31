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
lemma IsSymmSndFDerivWithinAt.comp'
    {f : E → F} {g : F → G} {s : Set E} {x : E}
    (hf : IsSymmSndFDerivWithinAt 𝕜 f s x)
    (hg : IsSymmSndFDerivAt 𝕜 g (f x))
    (hs : UniqueDiffWithinAt 𝕜 s x) :
    IsSymmSndFDerivWithinAt 𝕜 (fun y ↦ g (f y)) s x := by
  sorry
