import Mathlib


/-!  Brainstormed candidate lemmas for future mathlib extensions.
These are *not* proved; all lemmas end with `by sorry`.
-/

/-! ### General analytic / meromorphic function lemmas -/
lemma AnalyticOnNhd.real_range_subset_line {f : ℂ → ℂ} {s : Set ℂ}
    (hf : AnalyticOnNhd ℂ f s)
    {a b : ℂ}
    (hline : ∀ z ∈ s, f z ∈ {w : ℂ | ∃ r : ℝ, w = a + r • b}) :
    ∃ φ : ℂ → ℝ, AnalyticOnNhd ℝ φ s ∧
      ∀ z ∈ s, f z = a + φ z • b := by
  sorry