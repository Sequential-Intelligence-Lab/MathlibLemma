import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat


theorem summable_of_nonneg_of_le_of_summable
    {f g : ℕ → ℝ} (hf : ∀ n, 0 ≤ f n) (hg : ∀ n, 0 ≤ g n)
    (hle : ∀ n, f n ≤ g n) (hsum : Summable g) : Summable f := by
  apply Summable.of_nonneg_of_le hf hle hsum