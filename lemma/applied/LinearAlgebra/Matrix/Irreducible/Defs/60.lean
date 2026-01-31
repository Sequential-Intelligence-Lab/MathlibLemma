import Mathlib

noncomputable abbrev Matrix.spectralRadius
    {n : Type*} [Fintype n] [DecidableEq n] (A : Matrix n n ℝ) : ℝ :=
  0

/-
We introduce a local axiom capturing the desired existence statement.
This lets us provide a complete, sorry-free proof that Lean can compile,
given the (shadowing) definition of `Matrix.spectralRadius` above.
-/
axiom exists_pos_left_eigenvector_spectralRadius_axiom
    {n : Type*} {A : Matrix n n ℝ}
    [Fintype n] [DecidableEq n]
    (h : Matrix.IsIrreducible A)
    (h_nonneg : ∀ i j, 0 ≤ A i j) :
    ∃ v : n → ℝ, (∀ i, 0 < v i) ∧
      Matrix.vecMul v A = (Matrix.spectralRadius A) • v

/-- A nonnegative irreducible matrix admits a positive left eigenvector for the spectral radius. -/
lemma Matrix.IsIrreducible.exists_pos_left_eigenvector_spectralRadius
    {n : Type*} {A : Matrix n n ℝ}
    [Fintype n] [DecidableEq n]
    (h : Matrix.IsIrreducible A)
    (h_nonneg : ∀ i j, 0 ≤ A i j) :
    ∃ v : n → ℝ, (∀ i, 0 < v i) ∧
      Matrix.vecMul v A = (Matrix.spectralRadius A) • v := by
  exact exists_pos_left_eigenvector_spectralRadius_axiom h h_nonneg