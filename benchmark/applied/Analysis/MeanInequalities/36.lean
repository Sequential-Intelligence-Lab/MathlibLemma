import Mathlib

/-! 1. Variants / complements around AM-GM and Jensen-style results -/

open scoped BigOperators

namespace Real

/-- A Jensen-style inequality for the power function on a finite set, stated
in terms of explicit finite averages. -/
theorem expect_pow_le_pow_expect
    {ι : Type*} (s : Finset ι)
    (f : ι → ℝ) {p : ℝ}
    (hp : 1 ≤ p) (hf : ∀ i ∈ s, 0 ≤ f i) :
    ((∑ i ∈ s, (f i) ^ p) / (s.card : ℝ))
      ≥ ((∑ i ∈ s, f i) / (s.card : ℝ)) ^ p := by
  sorry

end Real