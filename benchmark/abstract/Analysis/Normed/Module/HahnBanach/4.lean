import Mathlib

/-! ### Brainstormed additional lemmas related to Hahn–Banach, duals, and complements -/

/-- If two elements of the strong dual agree on a dense subset, they are equal. -/
lemma StrongDual.ext_of_dense
    {𝕜 E : Type*}
    [NormedField 𝕜]
    [NormedAddCommGroup E] [NormedSpace 𝕜 E]
    {s : Set E} (hs : Dense s)
    {f g : StrongDual 𝕜 E} (h : ∀ x ∈ s, f x = g x) :
    f = g := by
  sorry