import Mathlib


/-! 1. Variants / complements around AM-GM and Jensen-style results -/
theorem Real.young_inequality_matrix
    {m n : ℕ} (A B : Fin m → Fin n → ℝ)
    {p q : ℝ} (hpq : p.HolderConjugate q) :
    (∑ i, ∑ j, A i j * B i j)
      ≤ (∑ i, ∑ j, |A i j| ^ p) ^ (1 / p) *
        (∑ i, ∑ j, |B i j| ^ q) ^ (1 / q) := by
  sorry
