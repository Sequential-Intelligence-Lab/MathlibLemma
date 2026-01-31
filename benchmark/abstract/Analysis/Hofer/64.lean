import Mathlib

/-- A monotone and bounded function from `ℝ` to `ℝ` has a limit at infinity. -/
lemma exists_limit_atTop_of_monotone_bdd
    {f : ℝ → ℝ} (hmono : Monotone f)
    (hb : ∃ M, ∀ x, f x ≤ M) :
    ∃ L, Filter.Tendsto f Filter.atTop (nhds L) := by
  sorry