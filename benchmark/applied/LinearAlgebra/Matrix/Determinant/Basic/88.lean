import Mathlib


/-
The following are purely hypothetical / proposed lemmas.
They are intentionally left with `sorry` proofs.
-/
-- 89. Determinant bounded below on compact set of positive-definite matrices
lemma Matrix.det_pos_lowerBound_on_compact
    {n : Type*} [Fintype n] [DecidableEq n]
    (K : Set (Matrix n n ℝ))
    (hK : IsCompact K)
    (hpos : ∀ A ∈ K, A.IsHermitian ∧ A.PosDef) :
    ∃ m > 0, ∀ A ∈ K, m ≤ A.det := by
  sorry