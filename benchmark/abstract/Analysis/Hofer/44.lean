import Mathlib

/-- A monotone function on `ℝ` has at most countably many discontinuities. -/
lemma countable_discontinuities_of_monotone
    {f : ℝ → ℝ} (hmono : Monotone f) :
    {x : ℝ | ¬ ContinuousAt f x}.Countable := by
  sorry