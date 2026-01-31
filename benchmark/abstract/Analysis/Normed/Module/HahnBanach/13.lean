import Mathlib


/-! ### Brainstormed additional lemmas related to Hahn–Banach, duals, and complements -/
-- 14. Existence of functional attaining norm on unit sphere in finite-dim case
lemma exists_dual_attains_norm_on_unit_sphere {𝕜 E : Type*}
    [RCLike 𝕜] [NormedAddCommGroup E] [NormedSpace 𝕜 E]
    [FiniteDimensional 𝕜 E] [Nontrivial E] :
    ∀ f : StrongDual 𝕜 E, ∃ x : E, ‖x‖ = 1 ∧ ‖f x‖ = ‖f‖ := by
  sorry
