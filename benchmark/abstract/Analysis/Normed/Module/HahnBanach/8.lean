import Mathlib


/-! ### Brainstormed additional lemmas related to Hahn–Banach, duals, and complements -/
-- 9. Dual of a finite-dimensional space is finite-dimensional (RCLike version)
lemma StrongDual.finiteDimensional_of_finiteDimensional {𝕜 E : Type*}
    [RCLike 𝕜] [NormedAddCommGroup E] [NormedSpace 𝕜 E]
    [FiniteDimensional 𝕜 E] :
    FiniteDimensional 𝕜 (StrongDual 𝕜 E) := by
  sorry
