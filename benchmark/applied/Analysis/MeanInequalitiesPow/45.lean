import Mathlib

lemma Real.minkowski_inequality_finset
    {p : ℝ} (hp1 : 1 ≤ p)
    (x y : ι → ℝ)
    (hx : ∀ i ∈ s, 0 ≤ x i) (hy : ∀ i ∈ s, 0 ≤ y i) :
    (∑ i ∈ s, (x i + y i) ^ p) ^ (1 / p) ≤
      (∑ i ∈ s, (x i) ^ p) ^ (1 / p) +
      (∑ i ∈ s, (y i) ^ p) ^ (1 / p) := by
  sorry
