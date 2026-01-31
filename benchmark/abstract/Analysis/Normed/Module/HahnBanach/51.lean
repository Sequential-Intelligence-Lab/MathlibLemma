import Mathlib


/-! ### Brainstormed additional lemmas related to Hahn–Banach, duals, and complements -/
-- 52. StrongDual evaluation map is continuous and bounded by norm
lemma StrongDual.eval_norm_le {𝕜 E : Type*} [RCLike 𝕜]
    [NormedAddCommGroup E] [NormedSpace 𝕜 E]
    (x : E) :
    ∀ f : StrongDual 𝕜 E, ‖f x‖ ≤ ‖f‖ * ‖x‖ := by
  sorry
