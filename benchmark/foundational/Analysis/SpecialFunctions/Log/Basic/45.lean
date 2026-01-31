import Mathlib

open scoped BigOperators

lemma log_prod_eq_sum_log {α : Type*} (s : Finset α) (f : α → ℝ)
    (hf : ∀ a ∈ s, 0 < f a) :
    Real.log (∏ a ∈ s, f a) = ∑ a ∈ s, Real.log (f a) := by
  sorry