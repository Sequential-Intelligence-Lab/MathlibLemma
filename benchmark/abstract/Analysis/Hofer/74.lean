import Mathlib

/-- If a sequence in `ℝ` is such that `u (n+1) ≥ u n + c` for some `c > 0`, then
`u n` tends to `+∞`. -/
lemma tendsto_atTop_of_add_const_le {u : ℕ → ℝ} {c : ℝ}
    (hc : 0 < c) (hstep : ∀ n, u (n + 1) ≥ u n + c) :
    Filter.Tendsto u Filter.atTop Filter.atTop := by
  sorry