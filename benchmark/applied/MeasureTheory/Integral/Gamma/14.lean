import Mathlib

open MeasureTheory

/-- Non-negativity of the basic Gamma-type kernel. -/
lemma Real.rpow_mul_exp_neg_rpow_nonneg
    {p q : ℝ} (hp : 0 < p) :
    0 ≤ᵐ[volume.restrict (Set.Ioi (0 : ℝ))]
      (fun x : ℝ => x ^ q * Real.exp (-(x ^ p))) := by
  sorry