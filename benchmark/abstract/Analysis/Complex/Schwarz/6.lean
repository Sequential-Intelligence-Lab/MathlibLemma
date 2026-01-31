import Mathlib

/-- In the setting of the Schwarz lemma, if the norm of the derivative at the center equals `1`
and the map is self-map of the unit disk centered at `0`, then `f` is a rotation. -/
lemma complex_eqOn_rotation_of_norm_deriv_eq_one_on_unitDisk
    {f : ℂ → ℂ}
    (hd : DifferentiableOn ℂ f (Metric.ball 0 1))
    (h_maps : Set.MapsTo f (Metric.ball 0 1) (Metric.ball 0 1))
    (h0 : f 0 = 0)
    (hderiv : ‖deriv f 0‖ = 1) :
    ∃ θ : ℝ, Set.EqOn f (fun z => Real.cos θ * z + Real.sin θ * (Complex.I * z))
      (Metric.ball 0 1) := by
  sorry
