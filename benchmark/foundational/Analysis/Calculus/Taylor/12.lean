import Mathlib

variable {E : Type _} [NormedAddCommGroup E] [NormedSpace ℝ E]

theorem taylorWithin_neg (f : ℝ → E) (n : ℕ) (s : Set ℝ) (x₀ : ℝ) :
    taylorWithin (fun x => -f x) n s x₀ =
      - taylorWithin f n s x₀ := by
  sorry