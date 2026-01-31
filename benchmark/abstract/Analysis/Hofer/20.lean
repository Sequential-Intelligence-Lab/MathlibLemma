import Mathlib

/-- If a real sequence is eventually nondecreasing and bounded above, then it has a limit. -/
lemma exists_tendsto_of_eventually_mono_bdd (u : ℕ → ℝ)
    (hmono : ∀ᶠ n in Filter.atTop, u n ≤ u (n + 1))
    (hb : ∃ M, ∀ n, u n ≤ M) :
    ∃ x, Filter.Tendsto u Filter.atTop (nhds x) := by
  sorry