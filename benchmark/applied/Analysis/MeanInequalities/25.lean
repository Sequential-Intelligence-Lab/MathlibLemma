import Mathlib

namespace NNReal

/-! 1. Variants / complements around AM-GM and Jensen-style results -/
theorem Lp_add_eq_iff
    {ι : Type*} (s : Finset ι)
    (f g : ι → ℝ≥0) {p : ℝ}
    (hp : (1 : ℝ) < p) :
    (∑ i ∈ s, (f i + g i) ^ p) ^ (1 / p) =
      (∑ i ∈ s, f i ^ p) ^ (1 / p) +
      (∑ i ∈ s, g i ^ p) ^ (1 / p)
      ↔
      (∃ c, ∀ i ∈ s, g i = c * f i
        ∨ f i = 0 ∧ g i = 0) := by
  sorry

end NNReal