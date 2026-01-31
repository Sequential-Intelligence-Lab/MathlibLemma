import Mathlib

lemma Real.sum_arith_mean_le_sup
    (w z : ι → ℝ) (hs : s.Nonempty)
    (hw : ∀ i ∈ s, 0 ≤ w i) (hw' : ∑ i ∈ s, w i = 1)
    (hz : ∀ i ∈ s, 0 ≤ z i) :
    ∑ i ∈ s, w i * z i ≤ s.sup' hs z := by
  sorry
