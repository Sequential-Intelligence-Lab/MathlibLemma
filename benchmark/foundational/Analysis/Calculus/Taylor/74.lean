import Mathlib

variable {E : Type _} [NormedAddCommGroup E] [NormedSpace ℝ E]

theorem iteratedDerivWithin_taylorWithinEval_zero
    (f : ℝ → E) (s : Set ℝ) (x₀ : ℝ) :
    iteratedDerivWithin 0
      (fun x => taylorWithinEval f 0 s x₀ x) s x₀ = f x₀ := by
  sorry