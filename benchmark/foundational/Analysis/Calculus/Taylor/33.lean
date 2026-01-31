import Mathlib

theorem taylorWithinEval_succ_iteratedDeriv
    {E : Type _} [NormedAddCommGroup E] [NormedSpace ℝ E]
    {f : ℝ → E} {s : Set ℝ} {x₀ x : ℝ} (n : ℕ) :
    deriv (taylorWithinEval f (n + 1) s x₀) x =
      taylorWithinEval (derivWithin f s) n s x₀ x := by
  sorry