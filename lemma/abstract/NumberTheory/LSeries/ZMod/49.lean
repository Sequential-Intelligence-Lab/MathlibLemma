import Mathlib


/-!  Brainstormed candidate lemmas for future mathlib extensions.
These are *not* proved; all lemmas end with `by sorry`.
-/

/-! ### General analytic / meromorphic function lemmas -/
lemma riemannZeta_deriv_at_0 :
    deriv riemannZeta 0 =
      -Complex.log (2 * π) / 2 := by
  sorry