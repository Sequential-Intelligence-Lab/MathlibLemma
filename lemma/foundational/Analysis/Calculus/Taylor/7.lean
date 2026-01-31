import Mathlib

open scoped BigOperators

variable {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]

theorem taylorCoeffWithin_eq_iteratedDerivWithin
    (f : ℝ → E) (k : ℕ) (s : Set ℝ) (x₀ : ℝ) :
    ((Nat.factorial k : ℝ) • taylorCoeffWithin f k s x₀) =
      iteratedDerivWithin k f s x₀ := by
  -- factorial is nonzero in ℝ
  have h : (Nat.factorial k : ℝ) ≠ 0 := by
    exact_mod_cast (Nat.factorial_ne_zero k)
  -- unfold the definition and simplify
  simpa [taylorCoeffWithin, smul_smul, h]