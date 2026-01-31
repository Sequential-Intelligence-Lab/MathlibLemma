import Mathlib

/-- For a primitive stochastic matrix, there is a unique stationary distribution. -/
lemma Matrix.IsPrimitive.unique_stationary_dist
    {n : Type*} {A : Matrix n n ℝ}
    [Fintype n] [DecidableEq n]
    (h : Matrix.IsPrimitive A)
    (h_stoch : ∀ i, ∑ j, A i j = 1 ∧ ∀ j, 0 ≤ A i j) :
    ∃! π : n → ℝ, (∀ i, 0 ≤ π i) ∧ (∑ i, π i = 1) ∧ Matrix.vecMul π A = π := by
  sorry
