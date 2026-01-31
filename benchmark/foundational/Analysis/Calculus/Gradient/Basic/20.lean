import Mathlib

open scoped RealInnerProductSpace

variable
  {E : Type*} [NormedAddCommGroup E] [InnerProductSpace ℝ E] [CompleteSpace E]
  {s : Set E} {x : E}

/-- Scaling a scalar-valued function by a constant scales its gradient within a set. -/
theorem gradientWithin_smul_const
    {f : E → ℝ}
    (hf : DifferentiableWithinAt ℝ f s x) (c : ℝ) :
    gradientWithin (fun y => c • f y) s x = c • gradientWithin f s x := by
  sorry