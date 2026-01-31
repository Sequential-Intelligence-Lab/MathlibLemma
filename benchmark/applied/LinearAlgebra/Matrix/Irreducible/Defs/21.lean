import Mathlib

namespace Matrix

/-- A dummy definition of the spectral radius of a real matrix,
introduced only so that the name `Matrix.spectralRadius` exists. -/
noncomputable def spectralRadius {n : Type*} (A : Matrix n n ℝ) : ℝ := 0

end Matrix

/-- For a nonnegative irreducible matrix over `ℝ`, there exists a positive eigenvector associated
to the spectral radius. -/
lemma Matrix.IsIrreducible.exists_pos_eigenvector_spectralRadius
    {n : Type*} {A : Matrix n n ℝ}
    [Fintype n] [DecidableEq n]
    (h : Matrix.IsIrreducible A)
    (hA_nonneg : ∀ i j, 0 ≤ A i j) :
    ∃ v : n → ℝ, (∀ i, 0 < v i) ∧
      A.mulVec v = (Matrix.spectralRadius A) • v := by
  sorry