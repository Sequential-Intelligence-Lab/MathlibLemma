import Mathlib

open scoped Real
open MeasureTheory Filter Set

/-- Integrability of a Gamma-type kernel near `0`. -/
lemma Real.integrable_rpow_exp_neg_rpow_atZero
    {p q : ℝ} (hp : 0 < p) (hq : -1 < q) :
    MeasureTheory.IntegrableAtFilter
      (fun x : ℝ => x ^ q * Real.exp (-(x ^ p)))
      (nhdsWithin (0 : ℝ) (Ioi 0)) := by
  sorry