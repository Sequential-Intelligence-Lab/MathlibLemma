import Mathlib

open Filter Topology

/-- If a real sequence is eventually nonincreasing and bounded below, then it has a limit. -/
lemma exists_tendsto_of_eventually_antitone_bdd {u : ℕ → ℝ}
    (hmono : ∀ᶠ n in atTop, u (n+1) ≤ u n)
    (hb : ∃ m, ∀ n, m ≤ u n) :
    ∃ x, Tendsto u atTop (𝓝 x) := by
  sorry