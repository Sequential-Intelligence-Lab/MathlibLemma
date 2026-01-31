import Mathlib


/-!  Brainstormed candidate lemmas for future mathlib extensions.
These are *not* proved; all lemmas end with `by sorry`.
-/

/-! ### General analytic / meromorphic function lemmas -/
lemma isPreconnected_halfPlane_re_ge (σ : ℝ) :
    IsPreconnected {z : ℂ | σ ≤ z.re} := by
  sorry
