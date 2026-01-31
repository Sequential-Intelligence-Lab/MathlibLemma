import Mathlib

/-- A Gamma-type integral identity in dimension 2 from polar coordinates. -/
lemma Real.integral_radial_rpow_mul_exp_neg_rpow_R2
    {p q : ℝ} (hp : 1 ≤ p) (hq : -2 < q) :
    ∫ x : EuclideanSpace ℝ (Fin 2), ‖x‖ ^ q * Real.exp (-‖x‖ ^ p) =
      (2 * Real.pi / p) * Real.Gamma ((q + 2) / p) := by
  sorry
