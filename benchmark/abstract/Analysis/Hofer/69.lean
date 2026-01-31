import Mathlib

open Filter Topology

/-- A bounded increasing sequence of reals has a limit and the limit is the supremum
of the range. -/
lemma tendsto_of_monotone_bdd_above_sup
    {u : ℕ → ℝ} (hmono : Monotone u)
    (hb : ∃ M, ∀ n, u n ≤ M) :
    ∃ L, Tendsto u atTop (𝓝 L)
      ∧ L = sSup (Set.range u) := by
  sorry