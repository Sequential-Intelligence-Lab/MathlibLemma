import Mathlib

/-- A relation between Gamma values at `(q + 1)/p` and `(q + p + 1)/p`. -/
lemma Real.Gamma_shifted_fraction
    {p q : ℝ} (hp : 0 < p) (hq : -1 < q) :
    Real.Gamma ((q + p + 1) / p) =
      ((q + 1) / p) * Real.Gamma ((q + 1) / p) := by
  sorry
