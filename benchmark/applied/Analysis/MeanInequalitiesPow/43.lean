import Mathlib

lemma Real.sum_arith_mean_pow_le_l2_norm_sq
    (w z : ι → ℝ) (hw : ∀ i ∈ s, 0 ≤ w i) (hw' : ∑ i ∈ s, w i = 1) :
    (∑ i ∈ s, w i * z i) ^ 2 ≤ ∑ i ∈ s, w i * (z i) ^ 2 := by
  sorry
