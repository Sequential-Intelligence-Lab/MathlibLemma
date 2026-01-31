import Mathlib

/-- A real sequence with eventually strictly increasing terms and bounded above has a limit. -/
lemma exists_tendsto_of_eventually_strictMono_bdd {u : ℕ → ℝ}
    (hmono : ∀ᶠ n in Filter.atTop, u n < u (n + 1))
    (hb : ∃ M, ∀ n, u n ≤ M) :
    ∃ x, Filter.Tendsto u Filter.atTop (nhds x) := by
  sorry