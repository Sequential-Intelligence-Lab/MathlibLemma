import Mathlib

namespace ENNReal

lemma tsum_schlomilch_ge_zero
    {u : ℕ → ℕ} {f : ℕ → ℝ≥0∞} :
    0 ≤ ∑' k, ((u (k + 1) - u k : ℕ) : ℝ≥0∞) * f (u k) := by
  sorry

end ENNReal