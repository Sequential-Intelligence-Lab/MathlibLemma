import Mathlib

/-! ### Brainstormed additional lemmas related to Hahn–Banach, duals, and complements -/

/-- 44. StrongDual of closed submodule is closed in StrongDual of whole space -/
lemma StrongDual.submodule_inclusion_isClosed
    {𝕜 E : Type*} [RCLike 𝕜]
    [NormedAddCommGroup E] [NormedSpace 𝕜 E]
    (p : Submodule 𝕜 E) (hp : IsClosed (p : Set E)) :
    IsClosed {f : StrongDual 𝕜 E | p ≤ LinearMap.ker (f : E →L[𝕜] 𝕜)} := by
  sorry