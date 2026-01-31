import Mathlib

open scoped BigOperators

lemma Real.arith_mean_ge_geom_mean_product
    {ι : Type _} (s : Finset ι) (w z : ι → ℝ)
    (hw : ∀ i ∈ s, 0 ≤ w i) (hw' : ∑ i ∈ s, w i = 1)
    (hz : ∀ i ∈ s, 0 < z i) :
    (∑ i ∈ s, w i * z i) ≥ ∏ i ∈ s, z i ^ (w i) := by
  sorry