import Mathlib

/-- If `f : ℝ → ℝ` is continuous and `f x ≤ c` for large `x`, and `f` tends to a limit `L`,
then `L ≤ c`. -/
lemma ge_of_tendsto_of_eventually_le
    {f : ℝ → ℝ} {L c : ℝ}
    (hf : Filter.Tendsto f Filter.atTop (nhds L))
    (hle : ∀ᶠ x in Filter.atTop, f x ≤ c) :
    L ≤ c := by
  sorry