import Mathlib

variable {E : Type _}

theorem taylorWithinEval_iteratedDeriv_at_center
    [NormedAddCommGroup E] [NormedSpace ℝ E]
    (f : ℝ → E) (s : Set ℝ) (x₀ : ℝ) (n : ℕ) :
    iteratedDerivWithin n (fun x => taylorWithinEval f n s x₀ x) s x₀ =
      iteratedDerivWithin n f s x₀ := by
  sorry