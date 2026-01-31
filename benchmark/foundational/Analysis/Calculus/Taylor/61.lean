import Mathlib

variable {E : Type _} [NormedAddCommGroup E] [NormedSpace ℝ E]

theorem taylorWithinEval_quadratic
    (f : ℝ → E) (s : Set ℝ) (x₀ x : ℝ)
    (hquad :
      f x = f x₀ + (x - x₀) • derivWithin f s x₀ +
        ((2 : ℝ)⁻¹ * (x - x₀) ^ 2) • iteratedDerivWithin 2 f s x₀) :
    taylorWithinEval f 2 s x₀ x = f x := by
  sorry