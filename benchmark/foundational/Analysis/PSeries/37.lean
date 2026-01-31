import Mathlib

lemma Real.not_summable_nat_pow_inv_le_one {p : ℕ} (hp : p ≤ 1) :
    ¬ Summable (fun n : ℕ => ((n : ℝ) ^ p)⁻¹) := by
  sorry
