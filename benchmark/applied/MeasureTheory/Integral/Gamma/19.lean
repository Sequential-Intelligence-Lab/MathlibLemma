import Mathlib

/-- Positivity of `Gamma (x)` for `x > 0` re-expressed via an integral inequality. -/
lemma Real.Gamma_pos_of_integral
    {x : ℝ} (hx : 0 < x) :
    0 < ∫ t in Set.Ioi (0 : ℝ), t ^ (x - 1) * Real.exp (-t) := by
  sorry
