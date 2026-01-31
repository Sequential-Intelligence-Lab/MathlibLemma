import Mathlib

open scoped Real

variable {E : Type*}
variable [NormedAddCommGroup E]
variable [InnerProductSpace ℝ E]
variable [CompleteSpace E]

variable (f : E → ℝ) (s : Set E) (x : E)

theorem gradientWithin_eq_iff
    {g : E} :
    HasGradientWithinAt f g s x ↔
      gradientWithin f s x = g ∧
        DifferentiableWithinAt ℝ f s x := by
  sorry