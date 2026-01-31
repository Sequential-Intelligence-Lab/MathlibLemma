import Mathlib

/-- A lower bound on the real Gamma function via a coarse inequality. -/
lemma Real.pow_mul_exp_le_Gamma
    {x : ℝ} (hx : 2 ≤ x) :
    x ^ (x - 1) * Real.exp (-x) ≤ Real.Gamma x := by
  sorry
