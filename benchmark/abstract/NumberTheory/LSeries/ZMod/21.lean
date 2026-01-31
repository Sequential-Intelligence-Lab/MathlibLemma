import Mathlib


/-!  Brainstormed candidate lemmas for future mathlib extensions.
These are *not* proved; all lemmas end with `by sorry`.
-/

/-! ### General analytic / meromorphic function lemmas -/
lemma LSeriesSummable_of_geometric_bound {f : ℕ → ℂ} {s : ℂ}
    (A r : ℝ) (hr : 0 < r) (hA : 0 < A)
    (hf : ∀ n, ‖f n‖ ≤ A * r ^ n)
    (hs : 1 < s.re)
    (hrr : r < 1) :
    LSeriesSummable f s := by
  sorry
