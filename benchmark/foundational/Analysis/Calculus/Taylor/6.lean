import Mathlib

variable {E : Type _} [NormedAddCommGroup E] [NormedSpace ℝ E]

theorem taylorCoeffWithin_sub (f g : ℝ → E) (k : ℕ) (s : Set ℝ) (x₀ : ℝ) :
    taylorCoeffWithin (fun x => f x - g x) k s x₀ =
      taylorCoeffWithin f k s x₀ - taylorCoeffWithin g k s x₀ := by
  sorry