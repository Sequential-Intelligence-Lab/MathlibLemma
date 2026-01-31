import Mathlib
import Mathlib.Data.Complex.Basic

/-!  Brainstormed candidate lemmas for future mathlib extensions.
These are *not* proved; all lemmas end with `by sorry`.
-/

/-! ### General analytic / meromorphic function lemmas -/
lemma AnalyticOnNhd.hasDerivAt_eq_zero_of_accum_zero
    {f : ℂ → ℂ} {s : Set ℂ} {z₀ : ℂ} (l : Filter ℂ)
    (hf : AnalyticOnNhd ℂ f s)
    (hz : z₀ ∈ s)
    (hacc : ∃ᶠ z in l, f z = 0) :
    HasDerivAt f 0 z₀ := by
  sorry