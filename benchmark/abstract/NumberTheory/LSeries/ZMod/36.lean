import Mathlib

/-!  Brainstormed candidate lemmas for future mathlib extensions.
These are *not* proved; all lemmas end with `by sorry`.
-/

/-! ### General analytic / meromorphic function lemmas -/
lemma ZMod.completedLFunction_conj {N : ℕ} [NeZero N]
    (Φ : ZMod N → ℂ) (s : ℂ) :
    ZMod.completedLFunction (fun x ↦ star (Φ x)) (star s) =
      star (ZMod.completedLFunction Φ s) := by
  sorry