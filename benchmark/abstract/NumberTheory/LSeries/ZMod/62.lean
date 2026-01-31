import Mathlib

/-!  Brainstormed candidate lemmas for future mathlib extensions.
These are *not* proved; all lemmas end with `by sorry`.
-/

/-! ### General analytic / meromorphic function lemmas -/

/-- Placeholder for a future definition of the completed sine zeta function. -/
noncomputable def completedSinZeta (a s : ℂ) : ℂ := 0

/-- Explicit notation for complex conjugation, to mimic `Complex.conj`. -/
def complexConj (z : ℂ) : ℂ := star z

lemma completedSinZeta_conj (a s : ℂ) :
    completedSinZeta (complexConj a) (complexConj s) =
      complexConj (completedSinZeta a s) := by
  sorry

/-! ### Connectedness / preconnectedness tricks -/