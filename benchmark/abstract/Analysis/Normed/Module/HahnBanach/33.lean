import Mathlib

/-! ### Brainstormed additional lemmas related to Hahn–Banach, duals, and complements -/

-- 34. StrongDual of product is product of StrongDuals
def StrongDual.prod_equiv {𝕜 E F : Type*} [RCLike 𝕜]
    [NormedAddCommGroup E] [NormedSpace 𝕜 E]
    [NormedAddCommGroup F] [NormedSpace 𝕜 F] :
    StrongDual 𝕜 (E × F) ≃ₗᵢ[𝕜] (StrongDual 𝕜 E × StrongDual 𝕜 F) := by
  sorry