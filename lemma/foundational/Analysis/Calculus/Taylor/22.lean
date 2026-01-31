import Mathlib

variable {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]

theorem taylorWithinEval_succ_center (f : ℝ → E) (n : ℕ) (s : Set ℝ) (x₀ : ℝ) :
    taylorWithinEval f (n + 1) s x₀ x₀ = f x₀ := by
  -- Prove the more general statement for all orders `k`
  have h : ∀ k : ℕ, taylorWithinEval f k s x₀ x₀ = f x₀ := by
    intro k
    induction' k with k ih
    · -- base case k = 0
      simpa using
        (taylorWithinEval_zero (f := f) (s := s) (x₀ := x₀) (x := x₀))
    · -- inductive step k → k + 1
      have hsucc :=
        (taylorWithinEval_succ (f := f) (n := k) (s := s) (x₀ := x₀) (x := x₀))
      -- At x = x₀, the extra term vanishes since (x₀ - x₀) = 0
      simpa [sub_self, ih] using hsucc
  -- Apply the general result to k = n + 1
  exact h (n + 1)