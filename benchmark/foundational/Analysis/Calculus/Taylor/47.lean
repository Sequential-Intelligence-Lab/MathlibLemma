import Mathlib

variable {E : Type _} [NormedAddCommGroup E] [NormedSpace ℝ E]

open Nat

theorem taylorCoeffWithin_iteratedDeriv_succ
    (f : ℝ → E) (s : Set ℝ) (x₀ : ℝ) (n : ℕ) :
    ((succ n).factorial : ℝ) • taylorCoeffWithin f (n + 1) s x₀ =
      iteratedDerivWithin (n + 1) f s x₀ := by
  sorry