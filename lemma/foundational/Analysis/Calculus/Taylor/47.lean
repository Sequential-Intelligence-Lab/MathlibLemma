import Mathlib

variable {E : Type _} [NormedAddCommGroup E] [NormedSpace ℝ E]

open Nat

theorem taylorCoeffWithin_iteratedDeriv_succ
    (f : ℝ → E) (s : Set ℝ) (x₀ : ℝ) (n : ℕ) :
    ((succ n).factorial : ℝ) • taylorCoeffWithin f (n + 1) s x₀ =
      iteratedDerivWithin (n + 1) f s x₀ := by
  -- Unfold the definition of the Taylor coefficient
  unfold taylorCoeffWithin
  -- The factorial is nonzero, even after casting to ℝ
  have hne : ((Nat.succ n).factorial : ℝ) ≠ 0 := by
    exact_mod_cast Nat.factorial_ne_zero (Nat.succ n)
  -- Combine the scalars and cancel using the inverse
  simpa [smul_smul, hne, Nat.succ_eq_add_one]