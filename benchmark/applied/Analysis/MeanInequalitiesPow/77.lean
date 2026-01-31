import Mathlib

lemma Real.geom_mean_le_arith_mean_of_sum_eq_one
    {ι : Type _} (s : Finset ι)
    (w z : ι → ℝ)
    (hw : ∀ i ∈ s, 0 ≤ w i)
    (hs : s.Nonempty)
    (hw' : ∑ i ∈ s, w i = (1 : ℝ))
    (hz : ∀ i ∈ s, 0 < z i)
    (hsum : ∑ i ∈ s, w i * z i = (1 : ℝ)) :
    ∏ i ∈ s, z i ^ (w i) ≤ (1 : ℝ) := by
  sorry