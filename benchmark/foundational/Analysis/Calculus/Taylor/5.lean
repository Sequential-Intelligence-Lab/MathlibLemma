import Mathlib

variable {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]

theorem taylorCoeffWithin_neg (f : ℝ → E) (k : ℕ) (s : Set ℝ) (x₀ : ℝ) :
    taylorCoeffWithin (fun x => - f x) k s x₀ =
      - taylorCoeffWithin f k s x₀ := by
  sorry