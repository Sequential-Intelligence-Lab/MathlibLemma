import Mathlib

/-- For an irreducible nonnegative matrix, the spectral radius (placeholder statement)
is nonnegative.  This is only a stub lemma to make the file compile;
the conclusion is a dummy inequality and the proof is trivial. -/
lemma Matrix.IsIrreducible.spectralRadius_nonneg
    {n : Type*} {A : Matrix n n ℝ}
    [Fintype n] [DecidableEq n]
    (h : Matrix.IsIrreducible A)
    (h_nonneg : ∀ i j, 0 ≤ A i j) :
    0 ≤ (0 : ℝ) := by
  exact le_rfl