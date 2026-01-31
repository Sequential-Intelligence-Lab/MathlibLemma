import Mathlib

/-! ### Brainstormed additional lemmas related to Hahn–Banach, duals, and complements -/

section

variable {𝕜 E : Type*} [NormedField 𝕜]
  [NormedAddCommGroup E] [NormedSpace 𝕜 E]

/-- 37. Hahn–Banach for seminormed spaces with quotient norm control (existence version). -/
lemma exists_extension_norm_le_quotient
    (K : Submodule 𝕜 E) (f : StrongDual 𝕜 K) :
    ∃ g : StrongDual 𝕜 E, ∀ x : K, g x = f x := by
  sorry

end