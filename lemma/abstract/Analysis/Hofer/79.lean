import Mathlib

open Filter

/-- If a sequence of reals tends to a limit and is eventually nonnegative, then so does
its absolute value.

Note: the nonnegativity assumption is actually unnecessary, since `abs` is continuous
everywhere. -/
lemma tendsto_abs_of_tendsto_nonneg
    (u : ℕ → ℝ) (L : ℝ)
    (hu : Tendsto u Filter.atTop (nhds L))
    (hpos : ∀ᶠ n in Filter.atTop, 0 ≤ u n) :
    Tendsto (fun n => |u n|) Filter.atTop (nhds |L|) := by
  -- `abs` is continuous, so it sends `nhds L` to `nhds |L|`
  have h_abs : Tendsto (fun x : ℝ => |x|) (nhds L) (nhds |L|) :=
    continuous_abs.tendsto L
  -- Compose the convergence of `u` with the convergence of `abs` at `L`
  exact h_abs.comp hu