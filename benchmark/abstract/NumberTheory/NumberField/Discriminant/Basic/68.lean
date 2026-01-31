import Mathlib

/-- A lemma about the growth of the sequence defining `abs_discr_ge'`. -/
lemma hermite_sequence_increasing (n : ℕ) :
    (n : ℝ) ^ (2 * n) / ((4 / Real.pi) ^ (2 * n) * (n.factorial : ℝ) ^ 2)
      ≤ ((n+1 : ℕ) : ℝ) ^ (2 * (n+1))
        / ((4 / Real.pi) ^ (2 * (n+1)) * ((n+1).factorial : ℝ) ^ 2) := by
  sorry
