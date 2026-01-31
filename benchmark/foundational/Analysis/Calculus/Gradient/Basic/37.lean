import Mathlib

open scoped BigOperators

variable {E : Type*}

/-- A lemma about the gradient of a composition with a scalar function.
We only state it and leave the proof as `sorry`. -/
theorem gradientWithin_comp_real
    [NormedAddCommGroup E] [InnerProductSpace ℝ E] [FiniteDimensional ℝ E]
    {s : Set E} {x : E}
    {h : ℝ → ℝ} {f : E → ℝ}
    (hh : DifferentiableAt ℝ h (f x))
    (hf : DifferentiableWithinAt ℝ f s x) :
    gradientWithin (fun y => h (f y)) s x =
      (deriv h (f x)) • gradientWithin f s x := by
  sorry