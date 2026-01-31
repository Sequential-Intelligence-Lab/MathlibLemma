import Mathlib

/-! ### Brainstormed additional lemmas related to Hahn–Banach, duals, and complements -/

/-- 86. Boundedness of `StrongDual` on bounded sets. -/
lemma StrongDual.bounded_on_bounded_set
    {𝕜 E : Type*}
    [NormedField 𝕜]
    [SeminormedAddCommGroup E] [NormedSpace 𝕜 E]
    (f : StrongDual 𝕜 E) :
    ∀ s : Set E, Bornology.IsBounded s → Bornology.IsBounded (f '' s) := by
  sorry