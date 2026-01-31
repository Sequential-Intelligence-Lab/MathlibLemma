import Mathlib

variable {E : Type _} [NormedAddCommGroup E] [NormedSpace ℝ E]

open scoped BigOperators

theorem iteratedDerivWithin_taylorWithinEval_succ_zero
    (f : ℝ → E) (s : Set ℝ) (x₀ : ℝ) (n : ℕ) :
    iteratedDerivWithin (n + 1) (fun x => taylorWithinEval f n s x₀ x) s x₀ = 0 := by
  sorry