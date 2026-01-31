import Mathlib

open Filter

/-- If a sequence of reals tends to a limit and is eventually nonnegative, then so does
its absolute value. -/
lemma tendsto_abs_of_tendsto_nonneg
    (u : ℕ → ℝ) (L : ℝ)
    (hu : Tendsto u Filter.atTop (nhds L))
    (hpos : ∀ᶠ n in Filter.atTop, 0 ≤ u n) :
    Tendsto (fun n => |u n|) Filter.atTop (nhds |L|) := by
  sorry