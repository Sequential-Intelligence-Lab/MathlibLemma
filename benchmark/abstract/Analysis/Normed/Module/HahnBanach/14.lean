import Mathlib

/-! ### Brainstormed additional lemmas related to Hahn–Banach, duals, and complements -/

/-- 15. StrongDual is reflexive in the finite-dimensional case.

This is stated as the canonical map from `E` into the dual of the strong dual
being an isometry. The proof is omitted (left as `sorry`). -/
lemma StrongDual.reflexive_of_finiteDimensional
    {𝕜 E : Type*} [RCLike 𝕜]
    [NormedAddCommGroup E] [NormedSpace 𝕜 E] [FiniteDimensional 𝕜 E] :
    Isometry
      (fun x : E =>
        (by
          -- We do not construct this map here; the proof is omitted.
          admit
        : StrongDual 𝕜 E →L[𝕜] 𝕜)) := by
  sorry