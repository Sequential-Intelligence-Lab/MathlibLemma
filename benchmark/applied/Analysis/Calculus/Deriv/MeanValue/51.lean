import Mathlib

open Affine

lemma meanValueTheorem_segment
    {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]
    {f : E → ℝ} {x y : E} {f' : E → E →L[ℝ] ℝ}
    (hfd : ∀ z ∈ segment ℝ x y, HasFDerivAt f (f' z) z)
    (hfcont : ContinuousOn f (segment ℝ x y)) :
    ∃ z ∈ segment ℝ x y, f y - f x = f' z (y - x) := by
  sorry