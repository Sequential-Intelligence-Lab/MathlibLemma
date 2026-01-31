import Mathlib

/-- If `f : ℝ → ℝ` is continuous and `f x ≥ c` for large `x`, and `f` tends to a limit `L`,
then `L ≥ c`. -/
lemma le_of_tendsto_of_eventually_ge
    {f : ℝ → ℝ} {L c : ℝ}
    (hf : Filter.Tendsto f Filter.atTop (nhds L))
    (hge : ∀ᶠ x in Filter.atTop, c ≤ f x) :
    c ≤ L := by
  sorry