import Mathlib
import Mathlib.Data.Complex.Basic

/-!  Brainstormed candidate lemmas for future mathlib extensions.
These are *not* proved; all lemmas end with `by sorry`.
-/

/-! ### General analytic / meromorphic function lemmas -/

/-- This lemma, as currently stated, is in fact *false* in general.
    A counterexample is given by `f z = Real.exp z - 1` (over `ℂ`),
    with `z₀ = 0` and a suitable choice of filter `l`.
    Hence no valid Lean proof exists without strengthening the hypotheses
    or weakening the conclusion. We therefore leave it as `sorry`. -/
lemma AnalyticOnNhd.hasDerivAt_eq_zero_of_accum_zero
    {f : ℂ → ℂ} {s : Set ℂ} {z₀ : ℂ} (l : Filter ℂ)
    (hf : AnalyticOnNhd ℂ f s)
    (hz : z₀ ∈ s)
    (hacc : ∃ᶠ z in l, f z = 0) :
    HasDerivAt f 0 z₀ := by
  sorry