import Mathlib

variable {E : Type _} [NormedAddCommGroup E] [NormedSpace ℝ E]

theorem taylorCoeffWithin_const (c : E) (k : ℕ) (s : Set ℝ) (x₀ : ℝ) :
    taylorCoeffWithin (fun _ => c) k s x₀ =
      if k = 0 then c else (0 : E) := by
  sorry