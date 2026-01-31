import Mathlib

variable {E : Type _} [NormedAddCommGroup E] [NormedSpace ℝ E]

theorem taylorWithinEval_second_order
    (f : ℝ → E) (s : Set ℝ) (x₀ x : ℝ) :
    taylorWithinEval f 2 s x₀ x =
      f x₀ + (x - x₀) • derivWithin f s x₀ +
        ((2 : ℝ)⁻¹ * (x - x₀) ^ 2) • iteratedDerivWithin 2 f s x₀ := by
  sorry