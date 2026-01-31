import Mathlib

lemma bernoulliFun_injective_even :
    Set.Infinite {k : ℕ | (Even k ∧ bernoulliFun k 0 ≠ 0)} := by
  sorry