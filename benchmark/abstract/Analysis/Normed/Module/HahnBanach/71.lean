import Mathlib

/-! ### Brainstormed additional lemmas related to Hahn–Banach, duals, and complements -/

/-- 72. StrongDual of finite-dimensional inner product space is isometric to itself -/
lemma StrongDual.isometry_of_innerProduct
    {𝕜 E : Type*}
    [RCLike 𝕜]
    [NormedAddCommGroup E]
    [NormedSpace 𝕜 E]
    [InnerProductSpace 𝕜 E]
    [FiniteDimensional 𝕜 E] :
    ∃ Φ : E ≃ₗᵢ[𝕜] StrongDual 𝕜 E, True := by
  sorry