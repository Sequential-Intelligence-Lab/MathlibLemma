import Mathlib

/-- A change of variables for integrals of radial functions on `ℂ` using polar coordinates. -/
lemma Complex.integral_radial_change_of_variables
    (f : ℝ → ℝ) :
    (∫ z : ℂ, f ‖z‖) =
      2 * Real.pi * ∫ r in Set.Ioi (0 : ℝ), r * f r := by
  sorry
