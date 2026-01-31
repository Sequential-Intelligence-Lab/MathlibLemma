import Mathlib

variable {E : Type _} [NormedAddCommGroup E] [NormedSpace ℝ E]

theorem taylorCoeffWithin_zero (f : ℝ → E) (s : Set ℝ) (x₀ : ℝ) :
    taylorCoeffWithin f 0 s x₀ = f x₀ := by
  simpa [taylorCoeffWithin]