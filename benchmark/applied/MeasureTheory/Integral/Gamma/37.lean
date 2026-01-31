import Mathlib

/-- A dominated convergence lemma specialized to Gamma-type integrals. -/
lemma Real.tendsto_integral_rpow_mul_exp_neg_rpow
    {p : ℝ} (hp : 0 < p) :
    Filter.Tendsto (fun q : ℝ =>
        ∫ x in Set.Ioi (0 : ℝ), x ^ q * Real.exp (-(x ^ p)))
      (Filter.atTop) (Filter.atTop) := by
  sorry
