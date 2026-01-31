import Mathlib

/-- If `f : ℝ → ℝ` is convex and differentiable, then its derivative is monotone. -/
lemma monotone_deriv_of_convex
    {f : ℝ → ℝ}
    (hconv : Convex ℝ (Set.univ : Set ℝ))
    (hf : Differentiable ℝ f) :
    Monotone (deriv f) := by
  sorry
