import Mathlib

lemma Real.inf_le_arith_mean
    (w z : ι → ℝ) (hs : s.Nonempty)
    (hw : ∀ i ∈ s, 0 ≤ w i) (hw' : ∑ i ∈ s, w i = 1)
    (hz : ∀ i ∈ s, 0 ≤ z i) :
    s.inf' hs z ≤ ∑ i ∈ s, w i * z i := by
  sorry
