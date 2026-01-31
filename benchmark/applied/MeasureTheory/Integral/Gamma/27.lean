import Mathlib

/-- A general `ℝ^n` Gamma-type integral in terms of the surface area of the sphere. -/
lemma Real.integral_radial_rpow_mul_exp_neg_rpow_Rn_formula
    {p q : ℝ} {n : ℕ} (hp : 0 < p) (hq : (-(n : ℝ)) < q) :
    ∃ C > (0 : ℝ), ∫ x : EuclideanSpace ℝ (Fin n),
        ‖x‖ ^ q * Real.exp (-‖x‖ ^ p) =
      C / p * Real.Gamma ((q + (n : ℝ)) / p) := by
  sorry
