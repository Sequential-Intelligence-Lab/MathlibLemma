import Mathlib


/-!  Brainstormed candidate lemmas for future mathlib extensions.
These are *not* proved; all lemmas end with `by sorry`.
-/

/-! ### General analytic / meromorphic function lemmas -/
lemma ZMod.completedLFunction_critical_strip_bounded {N : ℕ} [NeZero N]
    (Φ : ZMod N → ℂ)
    (T : ℝ) :
    ∃ C : ℝ, 0 < C ∧
      ∀ s : ℂ, 0 ≤ s.re → s.re ≤ 1 → ‖s.im‖ ≤ T →
        ‖ZMod.completedLFunction Φ s‖ ≤ C := by
  sorry