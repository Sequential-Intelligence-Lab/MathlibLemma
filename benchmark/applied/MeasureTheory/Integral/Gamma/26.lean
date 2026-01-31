import Mathlib

open scoped Real
open MeasureTheory

/-- Integrability of radial power times exponential kernels in `ℝ^n`. -/
lemma Real.integrable_radial_rpow_mul_exp_neg_rpow_Rn
    {p q : ℝ} {n : ℕ} (hp : 0 < p) (hq : (-(n : ℝ)) < q) :
    MeasureTheory.Integrable
      (fun x : EuclideanSpace ℝ (Fin n) =>
        ‖x‖ ^ q * Real.exp (-‖x‖ ^ p))
      MeasureTheory.volume := by
  sorry