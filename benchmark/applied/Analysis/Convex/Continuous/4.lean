import Mathlib

lemma ConvexOn.comp_isometry
    {E F : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]
    [NormedAddCommGroup F] [NormedSpace ℝ F]
    {C : Set E} {f : E → ℝ}
    (hf : ConvexOn ℝ C f) {φ : F ≃ᵢ E} :
    ConvexOn ℝ (φ ⁻¹' C) (fun x => f (φ x)) := by
  sorry