import Mathlib

/-- A bounded decreasing sequence of reals has a limit and the limit is the infimum
of the range. -/
lemma tendsto_of_antitone_bdd_below_inf
    (u : ℕ → ℝ) (hmono : Antitone u)
    (hb : ∃ m : ℝ, ∀ n : ℕ, m ≤ u n) :
    ∃ L : ℝ,
      Filter.Tendsto u Filter.atTop (nhds L)
      ∧ L = sInf (Set.range u) := by
  sorry