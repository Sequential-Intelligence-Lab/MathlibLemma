import Mathlib

/-- If a sequence of reals is antitone and bounded, then it is Cauchy. -/
lemma CauchySeq_of_antitone_bounded {u : ℕ → ℝ}
    (hmono : Antitone u) (hb : ∃ M, ∀ n, |u n| ≤ M) :
    CauchySeq u := by
  sorry
