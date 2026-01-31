import Mathlib

/-- A general substitution formula for polar coordinates in `ℂ` for scalar-valued integrands. -/
lemma Complex.integral_polarCoord_real
    (f : ℝ → ℝ) :
    ∫ z : ℂ, f ‖z‖ =
      ∫ r in Set.Ioi (0 : ℝ),
        ∫ θ in Set.Ioo (-Real.pi) Real.pi, r * f r := by
  sorry
