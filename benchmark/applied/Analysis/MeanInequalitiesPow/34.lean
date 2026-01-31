import Mathlib

lemma Real.mean_log_rpow_le_log_mean_rpow
    (w z : ι → ℝ) (hw : ∀ i ∈ s, 0 < w i) (hw' : ∑ i ∈ s, w i = 1)
    (hz : ∀ i ∈ s, 0 < z i) {p : ℝ} (hp1 : 1 ≤ p) :
    ∑ i ∈ s, w i * Real.log (z i ^ p) ≤
      Real.log (∑ i ∈ s, w i * z i ^ p) := by
  sorry
