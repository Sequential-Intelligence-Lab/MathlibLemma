import Mathlib

/-- A lemma on the asymptotic growth of the Hermite sequence used in `abs_discr_ge'`. -/
lemma hermite_sequence_tendsto_infty :
    Filter.Tendsto (fun n : ℕ =>
      (n : ℝ) ^ (2 * n)
        / ((4 / Real.pi) ^ (2 * n) * (n.factorial : ℝ) ^ 2)) Filter.atTop Filter.atTop := by
  sorry
