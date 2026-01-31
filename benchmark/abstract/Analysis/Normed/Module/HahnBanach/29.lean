import Mathlib


/-! ### Brainstormed additional lemmas related to Hahn–Banach, duals, and complements -/
-- 30. ContinuousLinearMap.exists_extension_of_finiteDimensional_domain
lemma ContinuousLinearMap.exists_extension_of_finiteDimensional_domain
    {𝕜 E F : Type*} [RCLike 𝕜]
    [NormedAddCommGroup E] [NormedSpace 𝕜 E]
    [NormedAddCommGroup F] [NormedSpace 𝕜 F]
    [FiniteDimensional 𝕜 E]
    (p : Submodule 𝕜 E) (f : p →L[𝕜] F) :
    ∃ g : E →L[𝕜] F, f = g.comp p.subtypeL := by
  sorry
