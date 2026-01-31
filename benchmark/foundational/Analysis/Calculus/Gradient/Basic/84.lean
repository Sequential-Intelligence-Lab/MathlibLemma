import Mathlib

open scoped RealInnerProductSpace

variable {E : Type*}
variable [NormedAddCommGroup E] [InnerProductSpace ℝ E] [FiniteDimensional ℝ E]

theorem gradientWithin_singleton
    (f : E → ℝ) (x : E) :
    gradientWithin f ({x} : Set E) x = 0 := by
  sorry