import Mathlib

/-- A lemma about the growth of the sequence defining `abs_discr_ge'`.

NOTE: As stated, this lemma is *false* for all natural numbers `n`.
The ratio of successive terms is

  ((n+1 : ℝ) ^ (2 * (n+1)) / ((4 / Real.pi) ^ (2 * (n+1)) * ((n+1).factorial : ℝ) ^ 2))
  /
  ((n : ℝ) ^ (2 * n) / ((4 / Real.pi) ^ (2 * n) * (n.factorial : ℝ) ^ 2))

which simplifies to

  ((1 + 1 / (n : ℝ)) ^ (2 * n)) * (Real.pi / 4) ^ 2.

This tends to (e^2) * (π/4)^2 > 1 as n → ∞, so the sequence is eventually
increasing, but the inequality does *not* hold for all `n : ℕ`.

Therefore this lemma cannot be proved as stated. -/
lemma hermite_sequence_increasing (n : ℕ) :
    (n : ℝ) ^ (2 * n) / ((4 / Real.pi) ^ (2 * n) * (n.factorial : ℝ) ^ 2)
      ≤ ((n+1 : ℕ) : ℝ) ^ (2 * (n+1))
        / ((4 / Real.pi) ^ (2 * (n+1)) * ((n+1).factorial : ℝ) ^ 2) := by
  -- This statement is not true for all `n`, so there is no proof term.
  -- You should either weaken or modify the statement (e.g., to hold only
  -- for sufficiently large `n`, or to assert eventual monotonicity).
  admit