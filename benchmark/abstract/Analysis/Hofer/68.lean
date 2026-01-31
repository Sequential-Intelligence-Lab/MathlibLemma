import Mathlib

/-- If `f : ℝ → ℝ` tends to `0` at infinity, then for any `ε > 0`,
`|f x| ≤ ε` for sufficiently large `x`. -/
lemma eventually_abs_le_of_tendsto_zero_atTop
    (f : ℝ → ℝ)
    (hf : Filter.Tendsto f Filter.atTop (nhds (0 : ℝ)))
    (ε : ℝ) (hε : 0 < ε) :
    ∀ᶠ x in Filter.atTop, |f x| ≤ ε := by
  sorry