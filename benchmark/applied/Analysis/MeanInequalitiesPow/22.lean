import Mathlib

lemma Real.rpow_card_le_sum_rpow
    {ι : Type _} (s : Finset ι) (p : ℝ)
    (hp1 : 1 ≤ p) (hs : s.Nonempty)
    (x : ι → ℝ) (hx : ∀ i ∈ s, 0 ≤ x i) :
    (Nat.card s : ℝ) * (s.inf' hs x) ^ p ≤ ∑ i ∈ s, x i ^ p := by
  sorry