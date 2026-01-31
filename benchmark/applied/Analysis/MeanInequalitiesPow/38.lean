import Mathlib

lemma Real.zpow_arith_mean_le_arith_mean_zpow'
    (w z : ι → ℝ) (hw : ∀ i ∈ s, 0 ≤ w i)
    (hw' : ∑ i ∈ s, w i = 1) (hz : ∀ i ∈ s, z i ≠ 0)
    {m : ℤ} (hm : 1 ≤ m) :
    (∑ i ∈ s, w i * z i) ^ m ≤ ∑ i ∈ s, w i * z i ^ m := by
  sorry
