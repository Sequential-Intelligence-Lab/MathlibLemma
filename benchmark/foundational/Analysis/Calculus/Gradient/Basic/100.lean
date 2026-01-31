import Mathlib

variable {E : Type*} [NormedAddCommGroup E] [InnerProductSpace ℝ E]
variable [CompleteSpace E]
variable {s : Set E} {x : E}
variable (f : E → ℝ)

theorem gradientWithin_add_const
    (c : ℝ) :
    gradientWithin (fun x => f x + c) s x = gradientWithin f s x := by
  sorry