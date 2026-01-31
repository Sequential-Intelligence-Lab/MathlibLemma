import Mathlib

/-! 1. Variants / complements around AM-GM and Jensen-style results -/

open scoped BigOperators

theorem Real.expect_abs_le_Lp
    {ι : Type*} (s : Finset ι)
    (f : ι → ℝ) {p : ℝ}
    (hp : 1 ≤ p) :
    (s.card : ℝ)⁻¹ * (∑ i ∈ s, |f i|) ≤
      ((s.card : ℝ)⁻¹ * (∑ i ∈ s, |f i| ^ p)) ^ (1 / p) := by
  sorry