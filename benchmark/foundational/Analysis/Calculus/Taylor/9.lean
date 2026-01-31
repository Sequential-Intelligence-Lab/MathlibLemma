import Mathlib

theorem taylorWithin_const
    (E : Type _) [NormedAddCommGroup E] [NormedSpace ℝ E]
    (c : E) (n : ℕ) (s : Set ℝ) (x₀ : ℝ) :
    taylorWithin (fun _ => c) n s x₀ = PolynomialModule.single ℝ 0 c := by
  sorry