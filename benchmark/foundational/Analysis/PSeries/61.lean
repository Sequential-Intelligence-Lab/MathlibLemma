import Mathlib

lemma Real.summable_nat_rpow_inv_of_lt_two {p : ℝ} (hp : 1 < p) :
    Summable fun n : ℕ => ((n + 1 : ℝ) ^ p)⁻¹ := by
  sorry
