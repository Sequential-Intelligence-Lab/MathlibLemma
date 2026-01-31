import Mathlib

variable {E : Type*}

theorem taylorCoeffWithin_add
    [NormedAddCommGroup E] [NormedSpace ℝ E]
    (f g : ℝ → E) (k : ℕ) (s : Set ℝ) (x₀ : ℝ) :
    taylorCoeffWithin (fun x => f x + g x) k s x₀ =
      taylorCoeffWithin f k s x₀ + taylorCoeffWithin g k s x₀ := by
  sorry