import Mathlib

/-- For an irreducible nonnegative matrix, there exists a strictly positive invariant cone for the
associated linear map. -/
lemma Matrix.IsIrreducible.exists_invariant_positive_cone
    {n : Type*} {A : Matrix n n ℝ}
    [Fintype n] [DecidableEq n]
    (h : Matrix.IsIrreducible A)
    (h_nonneg : ∀ i j, 0 ≤ A i j) :
    ∃ C : Set (n → ℝ),
      (∀ x ∈ C, ∀ i, 0 ≤ x i) ∧
      (∃ x ∈ C, ∀ i, 0 < x i) ∧
      ∀ x ∈ C, A.mulVec x ∈ C := by
  sorry
