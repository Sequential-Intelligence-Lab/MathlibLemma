import Mathlib

lemma Real.mean_inequality_norm_pow
    (w : ι → ℝ) (x : ι → ℝ)
    (hw : ∀ i ∈ s, 0 ≤ w i) (hw' : ∑ i ∈ s, w i = 1) (n : ℕ) :
    ‖∑ i ∈ s, w i * x i‖ ^ n ≤
      ∑ i ∈ s, w i * ‖x i‖ ^ n := by
  sorry
