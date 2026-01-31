import Mathlib

lemma bernoulliFun_comp_fractionalPart (k : ℕ) :
    bernoulliFun k ∘ (Int.fract : ℝ → ℝ) = bernoulliFun k := by
  sorry