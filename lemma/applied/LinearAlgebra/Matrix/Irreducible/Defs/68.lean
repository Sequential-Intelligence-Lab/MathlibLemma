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
  /-
  This lemma is *not* provable as stated for arbitrary `c > 0`.

  For a primitive nonnegative matrix `A`, spectral theory (Perron–Frobenius)
  shows that there is a distinguished `ρ > 0` (the spectral radius) such that
  `(A ^ k / ρ ^ k)` converges. For `c > ρ`, the normalized powers converge to
  `0`, while for `0 < c < ρ`, they diverge. Hence the claim of convergence for
  *every* positive `c` is false in general.

  Therefore, this lemma is intentionally left as an unproved stub.
  Any attempt to fill in a proof here without changing the statement would
  either be incorrect mathematically or would break the logical consistency of
  the development.
  -/
  sorry