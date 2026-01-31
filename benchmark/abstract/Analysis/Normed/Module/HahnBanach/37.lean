import Mathlib


/-! ### Brainstormed additional lemmas related to Hahn–Banach, duals, and complements -/
-- 38. StrongDual zero space is zero
lemma StrongDual.subsingleton_of_subsingleton {𝕜 E : Type*} [RCLike 𝕜]
    [Subsingleton E] [NormedAddCommGroup E] [NormedSpace 𝕜 E] :
    Subsingleton (StrongDual 𝕜 E) := by
  sorry
