import Mathlib

/-- A real sequence with summable differences from a convergent sequence is convergent. -/
lemma tendsto_of_summable_diff_tendsto
    (u v : ℕ → ℝ) (x : ℝ)
    (hv : Filter.Tendsto v Filter.atTop (nhds x))
    (h : Summable (fun n => |u n - v n|)) :
    Filter.Tendsto u Filter.atTop (nhds x) := by
  sorry