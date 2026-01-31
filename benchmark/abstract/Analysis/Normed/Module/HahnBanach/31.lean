import Mathlib

/-! ### Brainstormed additional lemmas related to Hahn–Banach, duals, and complements -/

-- 32. Annihilator of a finite-dimensional submodule is closed
lemma Submodule.annihilator_closed {𝕜 E : Type*} [RCLike 𝕜]
    [NormedAddCommGroup E] [NormedSpace 𝕜 E]
    [NormedAddCommGroup (Module.Dual 𝕜 E)] [NormedSpace 𝕜 (Module.Dual 𝕜 E)]
    (p : Submodule 𝕜 E) [FiniteDimensional 𝕜 p] :
    IsClosed ((p.dualAnnihilator : Submodule 𝕜 (Module.Dual 𝕜 E)) :
      Set (Module.Dual 𝕜 E)) := by
  sorry