import Mathlib


/-! ### Brainstormed additional lemmas related to Hahn–Banach, duals, and complements -/
-- 51. Composition of StrongDual with linear isometry is norm preserving
lemma StrongDual.compLinearIsometry_norm {𝕜 E F : Type*} [RCLike 𝕜]
    [NormedAddCommGroup E] [NormedSpace 𝕜 E] [FiniteDimensional 𝕜 E]
    [NormedAddCommGroup F] [NormedSpace 𝕜 F]
    (e : E ≃ₗᵢ[𝕜] F) (f : StrongDual 𝕜 F) :
    ‖f ∘L e.toContinuousLinearMap‖ = ‖f‖ := by
  sorry