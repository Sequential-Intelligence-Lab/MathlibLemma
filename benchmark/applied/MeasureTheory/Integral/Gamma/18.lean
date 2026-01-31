import Mathlib

/-- Finiteness of the second moment of the Gamma-type density. -/
lemma Real.integrable_rpow_sq_mul_exp_neg_rpow
    {p q : ℝ} (hp : 0 < p) (hq : -1 < q) :
    MeasureTheory.Integrable
      (fun x : ℝ => x ^ (q + 2) * Real.exp (-(x ^ p)))
      (MeasureTheory.volume.restrict (Set.Ioi (0 : ℝ))) := by
  sorry