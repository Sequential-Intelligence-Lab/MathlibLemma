import Mathlib

variable {E : Type _} [NormedAddCommGroup E] [NormedSpace ℝ E]

theorem taylorCoeffWithin_smul (c : ℝ) (f : ℝ → E) (k : ℕ) (s : Set ℝ) (x₀ : ℝ) :
    taylorCoeffWithin (fun x => c • f x) k s x₀ =
      c • taylorCoeffWithin f k s x₀ := by
  sorry