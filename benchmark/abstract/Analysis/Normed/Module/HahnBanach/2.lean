import Mathlib


/-! ### Brainstormed additional lemmas related to Hahn–Banach, duals, and complements -/
-- 3. Dual vector separates a point and a closed proper submodule
lemma exists_dual_vector_separating_submodule {𝕜 E : Type*} [RCLike 𝕜]
    [NormedAddCommGroup E] [NormedSpace 𝕜 E]
    (p : Submodule 𝕜 E) (hp : p ≠ ⊤) (hclosed : IsClosed (p : Set E))
    {x : E} (hx : x ∉ p) :
    ∃ g : StrongDual 𝕜 E, ‖g‖ = 1 ∧ g x ≠ 0 ∧ ∀ y ∈ p, g y = 0 := by
  sorry
