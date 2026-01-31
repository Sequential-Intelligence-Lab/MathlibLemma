import Mathlib

variable (E : Type*) [NormedAddCommGroup E] [NormedSpace ℝ E]

theorem taylorWithin_add (f g : ℝ → E) (n : ℕ) (s : Set ℝ) (x₀ : ℝ) :
    taylorWithin (fun x => f x + g x) n s x₀ =
      taylorWithin f n s x₀ + taylorWithin g n s x₀ := by
  sorry