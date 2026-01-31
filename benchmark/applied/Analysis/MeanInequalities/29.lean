import Mathlib

open scoped BigOperators
open Finset
open ENNReal

/-! 1. Variants / complements around AM-GM and Jensen-style results -/
theorem ENNReal.Lp_add_le_pairwise
    {ι : Type*} (s : Finset ι) (f g h : ι → ℝ≥0∞)
    {p : ℝ} (hp : 1 ≤ p)
    (hf : ∀ i ∈ s, f i ≤ g i + h i) :
    (∑ i ∈ s, f i ^ p) ^ (1 / p)
      ≤ (∑ i ∈ s, g i ^ p) ^ (1 / p) +
        (∑ i ∈ s, h i ^ p) ^ (1 / p) := by
  sorry

/-! 6. L^p vs L^q comparisons (power means, monotonicity) -/