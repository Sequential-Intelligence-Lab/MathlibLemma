import Mathlib

/-- Integrability of a Gamma-type kernel near `+∞`. -/
lemma Real.integrable_rpow_exp_neg_rpow_atTop
    {p q : ℝ} (hp : 0 < p) :
    MeasureTheory.IntegrableAtFilter
      (fun x : ℝ => x ^ q * Real.exp (-(x ^ p)))
      Filter.atTop
      MeasureTheory.volume := by
  sorry