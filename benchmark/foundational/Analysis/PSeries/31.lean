import Mathlib

lemma Real.not_summable_nat_rpow_inv_le_one {p : ℝ} (hp : p ≤ 1) :
    ¬ Summable (fun n : ℕ => ((n : ℝ) ^ p)⁻¹) := by
  sorry
