import Mathlib

lemma Real.holder_inequality_finset
    {p q : ℝ} (hp1 : 1 < p) (hq1 : 1 < q) (hpq : 1 / p + 1 / q = 1)
    (x y : ι → ℝ)
    (hx : ∀ i ∈ s, 0 ≤ x i) (hy : ∀ i ∈ s, 0 ≤ y i) :
    ∑ i ∈ s, x i * y i ≤
      (∑ i ∈ s, (x i) ^ p) ^ (1 / p) *
      (∑ i ∈ s, (y i) ^ q) ^ (1 / q) := by
  sorry
