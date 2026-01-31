import Mathlib

variable {E F : Type*}
variable [NormedAddCommGroup E] [NormedSpace ℝ E]
variable [NormedAddCommGroup F] [NormedSpace ℝ F]
variable {C : Set F} {f : F → ℝ}

/-! ### Convex / Concave: basic structural lemmas -/
lemma ConcaveOn.comp_isometry
    (hf : ConcaveOn ℝ C f) {φ : E ≃ᵢ F} :
    ConcaveOn ℝ (φ ⁻¹' C) (fun x => f (φ x)) := by
  sorry