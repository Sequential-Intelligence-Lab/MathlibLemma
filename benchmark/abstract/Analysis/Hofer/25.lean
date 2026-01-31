import Mathlib

/-- If a function `u : ℕ → ℝ` tends to `+∞`, then there exists a monotone subsequence that also
tends to `+∞`. -/
lemma exists_subseq_mono_tendsto_atTop
    (u : ℕ → ℝ)
    (hu : Filter.Tendsto u Filter.atTop (Filter.atTop : Filter ℝ)) :
    ∃ φ : ℕ → ℕ,
      StrictMono φ ∧
      Monotone (fun n => u (φ n)) ∧
      Filter.Tendsto (fun n => u (φ n)) Filter.atTop (Filter.atTop : Filter ℝ) := by
  sorry