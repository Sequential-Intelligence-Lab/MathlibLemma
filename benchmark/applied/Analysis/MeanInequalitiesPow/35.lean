import Mathlib

lemma Real.subadditive_rpow_mean {p : ℝ} (hp1 : 1 ≤ p)
    (x y : ι → ℝ) (hx : ∀ i ∈ s, 0 ≤ x i) (hy : ∀ i ∈ s, 0 ≤ y i)
    (w : ι → ℝ) (hw : ∀ i ∈ s, 0 ≤ w i) (hw' : ∑ i ∈ s, w i = 1) :
    (∑ i ∈ s, w i * (x i + y i) ^ p) ^ (1 / p) ≤
      (∑ i ∈ s, w i * x i ^ p) ^ (1 / p) +
        (∑ i ∈ s, w i * y i ^ p) ^ (1 / p) := by
  sorry
