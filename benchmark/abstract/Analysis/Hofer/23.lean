import Mathlib

/-- If a real function is continuous and has a finite limit at infinity, then the limit at
infinity equals the limit of the function along any sequence tending to infinity. -/
lemma Tendsto.comp_tendsto_atTop_real
    {f : ℝ → ℝ} {u : ℕ → ℝ} {L : ℝ}
    (hf : Filter.Tendsto f Filter.atTop (nhds L))
    (hu : Filter.Tendsto u Filter.atTop Filter.atTop) :
    Filter.Tendsto (fun n => f (u n)) Filter.atTop (nhds L) := by
  sorry