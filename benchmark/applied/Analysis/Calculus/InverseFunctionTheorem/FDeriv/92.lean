import Mathlib

variable {𝕜 : Type*} [NontriviallyNormedField 𝕜]
variable {E : Type*} [NormedAddCommGroup E] [NormedSpace 𝕜 E]
variable {F : Type*} [NormedAddCommGroup F] [NormedSpace 𝕜 F]
variable {G : Type*} [NormedAddCommGroup G] [NormedSpace 𝕜 G]
variable {H : Type*} [NormedAddCommGroup H] [NormedSpace 𝕜 H]

open Filter Set Topology

/-- 93. Local inverse sends compact sets near `f x` to compact sets near `x`. -/
lemma HasStrictFDerivAt.localInverse_image_compact
    [CompleteSpace E] [ProperSpace E] [ProperSpace F]
    {f : E → F} {f' : E ≃L[𝕜] F} {x : E}
    (hf : HasStrictFDerivAt f (f' : E →L[𝕜] F) x)
    (l : Filter (Set F)) :
    ∀ᶠ K in l,
      ∀ (s : Set F), IsCompact s → s ⊆ K →
        IsCompact (hf.localInverse f f' x '' s) := by
  sorry