import Mathlib

open Real

lemma summable_nat_rpow_iff {p : ℝ} :
    Summable (fun n : ℕ => (n : ℝ) ^ p) ↔ p < -1 := by
  sorry