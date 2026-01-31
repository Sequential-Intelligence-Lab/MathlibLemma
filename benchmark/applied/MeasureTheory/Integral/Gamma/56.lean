import Mathlib

/-- A version of polar coordinates with complex-valued integrands. -/
lemma Complex.integral_polarCoord_complex
    (f : ℝ → ℂ) :
    ∫ z : ℂ, f ‖z‖ =
      ∫ r in Set.Ioi (0 : ℝ),
        ∫ θ in Set.Ioo (-Real.pi) Real.pi, (r : ℂ) * f r := by
  sorry
