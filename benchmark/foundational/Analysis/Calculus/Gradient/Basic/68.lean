import Mathlib

open scoped BigOperators

variable {E : Type _}

-- Work over ℝ with a complete inner product space E
variable [NormedAddCommGroup E] [InnerProductSpace ℝ E] [CompleteSpace E]

variable {f : E → ℝ} {s : Set E} {x : E}

theorem gradientWithin_eq_iff_hasGradientWithinAt
    {g : E} (h : DifferentiableWithinAt ℝ f s x) :
    gradientWithin f s x = g ↔ HasGradientWithinAt f g s x := by
  sorry