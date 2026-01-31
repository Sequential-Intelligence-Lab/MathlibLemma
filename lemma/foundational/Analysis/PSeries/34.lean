import Mathlib

lemma Real.summable_nat_rpow_iff' {p : ℝ} :
    Summable (fun n : ℕ => (n : ℝ) ^ p) ↔ p < -1 := by
  simpa using (Real.summable_nat_rpow_iff (p := p))