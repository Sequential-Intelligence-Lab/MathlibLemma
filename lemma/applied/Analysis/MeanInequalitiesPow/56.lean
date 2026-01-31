import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

theorem NNReal.rpow_sum_le
    {ι : Type _} (s : Finset ι) {p : ℝ} (hp1 : 1 ≤ p) (x : ι → ℝ) :
    (∑ i ∈ s, x i) ^ p ≤
      (Nat.card s : ℝ) ^ (p - 1) * ∑ i ∈ s, (x i) ^ p := by
  have h_main : (∑ i ∈ s, x i) ^ p ≤ (Nat.card s : ℝ) ^ (p - 1) * ∑ i ∈ s, (x i) ^ p := by sorry
  sorry