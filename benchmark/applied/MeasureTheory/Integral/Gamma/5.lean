import Mathlib

/-- Asymptotic decay of `x^q * exp(-x^p)` at `+∞`. -/
lemma Real.isLittleO_rpow_mul_exp_neg_rpow_atTop
    {p q : ℝ} (hp : 0 < p) :
    (fun x : ℝ => x ^ q * Real.exp (-(x ^ p))) =o[Filter.atTop]
      (fun x => Real.exp (-(x ^ (p / 2)))) := by
  sorry
