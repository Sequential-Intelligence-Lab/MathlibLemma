import Mathlib


/-! ### Brainstormed additional lemmas related to Hahn–Banach, duals, and complements -/
-- 39. Norm of zero StrongDual
lemma StrongDual.norm_zero {𝕜 E : Type*} [RCLike 𝕜]
    [NormedAddCommGroup E] [NormedSpace 𝕜 E] :
    ‖(0 : StrongDual 𝕜 E)‖ = 0 := by
  simpa using (norm_zero : ‖(0 : StrongDual 𝕜 E)‖ = 0)