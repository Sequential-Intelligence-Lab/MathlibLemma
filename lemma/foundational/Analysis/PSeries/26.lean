import Mathlib

open scoped BigOperators

lemma NNReal.summable_nat_rpow_inv_iff {p : ℝ} :
    Summable (fun n : ℕ => ((n : ℝ) ^ p)⁻¹) ↔ 1 < p := by
  simpa using Real.summable_nat_rpow_inv_iff (p := p)