import Mathlib


/-! ### Brainstormed additional lemmas related to Hahn–Banach, duals, and complements -/
-- 38. StrongDual zero space is zero
lemma StrongDual.subsingleton_of_subsingleton {𝕜 E : Type*} [RCLike 𝕜]
    [Subsingleton E] [NormedAddCommGroup E] [NormedSpace 𝕜 E] :
    Subsingleton (StrongDual 𝕜 E) := by
  -- `StrongDual 𝕜 E` is definitionally `E →L[𝕜] 𝕜`
  change Subsingleton (E →L[𝕜] 𝕜)
  refine ⟨?_⟩
  intro f g
  ext x
  -- In a subsingleton type, any element equals `0`
  have hx : x = 0 := Subsingleton.elim _ _
  simpa [hx]