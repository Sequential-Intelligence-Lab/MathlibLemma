import Mathlib

/-- A monotone and bounded below function from `ℝ` to `ℝ` has a limit at `-∞`. -/
lemma exists_limit_atBot_of_monotone_bddBelow
    {f : ℝ → ℝ} (hmono : Monotone f)
    (hb : ∃ m, ∀ x, m ≤ f x) :
    ∃ L, Filter.Tendsto f Filter.atBot (nhds L) := by
  sorry