import Mathlib

lemma Real.rpow_sum_le {p : ℝ} (hp1 : 1 ≤ p)
    (x : ι → ℝ) (hx : ∀ i ∈ s, 0 ≤ x i) :
    (∑ i ∈ s, x i) ^ p ≤
      (Nat.card s : ℝ) ^ (p - 1) * ∑ i ∈ s, (x i) ^ p := by
  sorry
