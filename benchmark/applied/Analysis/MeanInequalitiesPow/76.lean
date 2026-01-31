import Mathlib

lemma Real.arith_mean_le_geom_mean_of_prod_eq_one
    {ι : Type _} (s : Finset ι)
    (w z : ι → ℝ)
    (hw : ∀ i ∈ s, 0 ≤ w i)
    (hs : s.Nonempty)
    (hw' : ∑ i ∈ s, w i = 1)
    (hz : ∀ i ∈ s, 0 < z i)
    (hprod : ∏ i ∈ s, z i ^ (w i) = 1) :
    ∑ i ∈ s, w i * z i ≥ 1 := by
  sorry