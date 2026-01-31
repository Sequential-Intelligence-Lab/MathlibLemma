import Mathlib

lemma bernoulliFun_bddBelow_Icc (k : ℕ) :
    ∀ a b : ℝ, a ≤ b → ∃ M, ∀ x ∈ Set.Icc a b, bernoulliFun k x ≥ M := by
  sorry
