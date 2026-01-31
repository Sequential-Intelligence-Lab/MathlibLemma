import Mathlib

/-- For an irreducible nonnegative matrix, the spectral radius (placeholder statement)
is strictly positive.  This is only a stub lemma to make the file compile;
the conclusion is a dummy inequality and the proof is `sorry`. -/
lemma Matrix.IsIrreducible.spectralRadius_pos
    {n : Type*} {A : Matrix n n ℝ}
    [Fintype n] [DecidableEq n]
    (h : Matrix.IsIrreducible A)
    (h_nonneg : ∀ i j, 0 ≤ A i j) :
    0 < (0 : ℝ) := by
  sorry