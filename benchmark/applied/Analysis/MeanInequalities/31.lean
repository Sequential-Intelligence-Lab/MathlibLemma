import Mathlib

/-! 1. Variants / complements around AM-GM and Jensen-style results -/

namespace NNReal

theorem Lp_le_Lq_finset
    {ι : Type*} (s : Finset ι) (f : ι → ℝ≥0)
    {p q : ℝ} (hp : 1 ≤ p) (hpq : p ≤ q) :
    (∑ i ∈ s, (f i : ℝ) ^ q) ^ (1 / q)
      ≤ (∑ i ∈ s, (f i : ℝ) ^ p) ^ (1 / p) := by
  sorry

end NNReal