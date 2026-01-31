import Mathlib

variable {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]

theorem taylorCoeffWithin_iteratedDeriv_zero
    (f : ℝ → E) (s : Set ℝ) (x₀ : ℝ) :
    taylorCoeffWithin f 0 s x₀ = iteratedDerivWithin 0 f s x₀ := by
  sorry