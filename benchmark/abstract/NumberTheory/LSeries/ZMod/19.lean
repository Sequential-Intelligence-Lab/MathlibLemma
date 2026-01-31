import Mathlib

/-!  Brainstormed candidate lemmas for future mathlib extensions.
These are *not* proved; all lemmas end with `by sorry`.
-/

/-! ### General analytic / meromorphic function lemmas -/
lemma LSeriesSummable_of_nonneg_real
    (f : ℕ → ℝ) (s : ℝ)
    (hf : ∀ n, 0 ≤ f n)
    (hs : 1 < s)
    (hdec : ∀ᶠ n in Filter.atTop, f (n + 1) ≤ f n)
    (hzero : Filter.Tendsto f Filter.atTop (nhds (0 : ℝ))) :
    LSeriesSummable (fun n ↦ (f n : ℂ)) (s : ℂ) := by
  sorry