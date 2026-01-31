import Mathlib

lemma Real.arith_mean_le_geom_mean_lim
    (w z : ι → ℝ) (hw : ∀ i ∈ s, 0 ≤ w i) (hw' : ∑ i ∈ s, w i = 1)
    (hz : ∀ i ∈ s, 0 < z i) :
    (∑ i ∈ s, w i * z i) ≥
    Real.exp (∑ i ∈ s, w i * Real.log (z i)) := by
  sorry
