import Mathlib


/-! ### Brainstormed additional lemmas related to Hahn–Banach, duals, and complements -/
-- 31. Norm equality for extension from finite-dimensional domain
lemma ContinuousLinearMap.exists_extension_norm_eq_of_finiteDimensional_domain
    {𝕜 E : Type*} [RCLike 𝕜] [SeminormedAddCommGroup E] [NormedSpace 𝕜 E]
    (p : Submodule 𝕜 E) [FiniteDimensional 𝕜 p]
    (f : StrongDual 𝕜 p) :
    ∃ g : StrongDual 𝕜 E, (∀ x : p, g x = f x) ∧ ‖g‖ = ‖f‖ := by
  sorry
