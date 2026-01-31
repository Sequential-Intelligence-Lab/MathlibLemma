import Mathlib


/-!  Brainstormed candidate lemmas for future mathlib extensions.
These are *not* proved; all lemmas end with `by sorry`.
-/

/-! ### General analytic / meromorphic function lemmas -/
lemma riemannZeta_nonzero_on_re_gt_1 :
    ∀ z : ℂ, 1 < z.re → riemannZeta z ≠ 0 := by
  sorry
