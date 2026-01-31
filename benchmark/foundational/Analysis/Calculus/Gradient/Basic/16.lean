import Mathlib

open scoped Real

variable {E : Type _} [NormedAddCommGroup E] [NormedSpace ℝ E]
variable [InnerProductSpace ℝ E] [FiniteDimensional ℝ E] [CompleteSpace E]
variable {f : E → ℝ} {s : Set E} {x : E}

theorem gradientWithin_neg
    (hf : DifferentiableWithinAt ℝ f s x) :
    gradientWithin (fun y => - f y) s x = - gradientWithin f s x := by
  sorry