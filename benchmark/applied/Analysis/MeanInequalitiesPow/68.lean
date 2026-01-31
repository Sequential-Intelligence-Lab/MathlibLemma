import Mathlib

namespace ENNReal

lemma rpow_sum_le
    {ι : Type _} (s : Finset ι) {p : ℝ} (hp1 : 1 ≤ p) (x : ι → ℝ≥0∞) :
    ENNReal.rpow (∑ i ∈ s, x i) p ≤
      ENNReal.rpow (s.card : ℝ≥0∞) (p - 1) * ∑ i ∈ s, ENNReal.rpow (x i) p := by
  sorry

end ENNReal