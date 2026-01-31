import Mathlib

lemma Real.summable_nat_rpow_inv_from {p : ℝ} (hp : 1 < p) (k : ℕ) :
    Summable fun n : ℕ => ((n + k : ℝ) ^ p)⁻¹ := by
  sorry
