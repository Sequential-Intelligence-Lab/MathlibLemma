import Mathlib

/-- For a primitive nonnegative matrix, the normalized powers converge entrywise.

This is only a statement stub with `sorry` and is not proved.
The normalization constant `c` is left as an arbitrary positive real to avoid
dependencies on spectral radius definitions. -/
lemma Matrix.IsPrimitive.entrywise_limit_pow
    {n : Type*} {A : Matrix n n ℝ}
    [Fintype n] [DecidableEq n]
    (h : Matrix.IsPrimitive A)
    (h_nonneg : ∀ i j, 0 ≤ A i j)
    (c : ℝ) (hc : 0 < c) :
    ∃ B : Matrix n n ℝ,
      (∀ i j, 0 ≤ B i j) ∧
      ∀ i j,
        Filter.Tendsto
          (fun k : ℕ => (A ^ k) i j / c ^ k)
          Filter.atTop
          (nhds (B i j)) := by
  sorry