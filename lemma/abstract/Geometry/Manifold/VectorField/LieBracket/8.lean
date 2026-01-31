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
lemma HasFDerivAt.comp_hasFDerivAt'
    {f : E → F} {g : F → G} {x : E}
    {f' : E →L[𝕜] F} {g' : F →L[𝕜] G}
    (hg : HasFDerivAt g g' (f x))
    (hf : HasFDerivAt f f' x)
    (hcom : g' ∘L f' = (g' ∘L f')) :
    HasFDerivAt (fun x ↦ g (f x)) (g' ∘L f') x := by
  -- The hypothesis `hcom` is trivially `rfl` and not needed.
  -- We directly use the standard composition lemma from mathlib.
  simpa using hg.comp x hf