import Mathlib

open scoped BigOperators

variable {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]

theorem taylorCoeffWithin_eq_iteratedDerivWithin
    (f : ℝ → E) (k : ℕ) (s : Set ℝ) (x₀ : ℝ) :
    ((Nat.factorial k : ℝ) • taylorCoeffWithin f k s x₀) =
      iteratedDerivWithin k f s x₀ := by
  sorry