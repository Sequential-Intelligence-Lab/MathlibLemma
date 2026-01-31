import Mathlib


/-! ### Brainstormed additional lemmas related to Hahn–Banach, duals, and complements -/
-- 26. StrongDual is complete if the space is
lemma StrongDual.completeSpace {𝕜 E : Type*} [RCLike 𝕜]
    [NormedAddCommGroup E] [NormedSpace 𝕜 E] [CompleteSpace E] :
    CompleteSpace (StrongDual 𝕜 E) := by
  sorry
