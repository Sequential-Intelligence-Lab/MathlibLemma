import Mathlib


/-!  Brainstormed candidate lemmas for future mathlib extensions.
These are *not* proved; all lemmas end with `by sorry`.
-/

/-! ### General analytic / meromorphic function lemmas -/
lemma isPreconnected_strip (σ₁ σ₂ : ℝ) :
    IsPreconnected {z : ℂ | σ₁ ≤ z.re ∧ z.re ≤ σ₂} := by
  sorry

/-! ### Misc complex-analytic inequalities / bounds -/
