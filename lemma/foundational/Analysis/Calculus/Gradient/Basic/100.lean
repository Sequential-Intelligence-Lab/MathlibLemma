import Mathlib

variable {E : Type*} [NormedAddCommGroup E] [InnerProductSpace ℝ E]
variable [CompleteSpace E]
variable {s : Set E} {x : E}
variable (f : E → ℝ)

theorem gradientWithin_add_const
    (c : ℝ) :
    gradientWithin (fun x => f x + c) s x = gradientWithin f s x := by
  classical
  -- `gradientWithin` is defined in terms of `fderivWithin` and the Riesz isometry.
  -- The derivative of adding a constant is the same as the derivative of `f`,
  -- and `simp` with `[gradientWithin]` and `fderivWithin_add_const` closes the goal.
  simpa [gradientWithin]