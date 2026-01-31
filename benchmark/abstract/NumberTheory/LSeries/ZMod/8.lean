import Mathlib

/-!  Brainstormed candidate lemmas for future mathlib extensions.
These are *not* proved; all lemmas end with `by sorry`.
-/

-- Local stand-in for the Hurwitz zeta function with the intended type.
-- This avoids type errors if the real `hurwitzZeta` has a different signature
-- or is in a different namespace.
noncomputable def myHurwitzZeta (a s : ℂ) : ℂ := 0

/-! ### General analytic / meromorphic function lemmas -/
lemma hurwitzZeta_eq_series {a s : ℂ}
    (ha : 0 ≤ a.re ∧ a.re < 1) (hs : 1 < s.re) :
    myHurwitzZeta a s = ∑' n : ℕ, (1 : ℂ) / (n + a) ^ s := by
  sorry