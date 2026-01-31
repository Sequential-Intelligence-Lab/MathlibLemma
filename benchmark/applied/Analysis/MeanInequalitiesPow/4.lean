import Mathlib

lemma Real.pow_arith_mean_strict_lt_arith_mean_pow
    {ι : Type _} (s : Finset ι) (w z : ι → ℝ)
    (hw : ∀ i ∈ s, 0 < w i)
    (hw' : ∑ i ∈ s, w i = 1)
    (hz : ∀ i ∈ s, 0 ≤ z i)
    {p : ℝ} (hp1 : 1 < p)
    (hne : ∃ i ∈ s, ∃ j ∈ s, z i ≠ z j) :
    (∑ i ∈ s, w i * z i) ^ p < ∑ i ∈ s, w i * z i ^ p := by
  sorry