import Mathlib

lemma NNReal.rpow_sum_le
    {ι : Type _} (s : Finset ι) {p : ℝ} (hp1 : 1 ≤ p) (x : ι → ℝ) :
    (∑ i ∈ s, x i) ^ p ≤
      (Nat.card s : ℝ) ^ (p - 1) * ∑ i ∈ s, (x i) ^ p := by
  sorry