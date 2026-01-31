import Mathlib

open scoped Real

lemma bernoulliFun_comp_circle (k : ℕ) :
    ∀ z : ℝ, periodizedBernoulli k z = bernoulliFun k z := by
  intro z
  sorry