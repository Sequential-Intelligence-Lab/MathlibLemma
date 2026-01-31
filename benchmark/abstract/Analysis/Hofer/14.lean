import Mathlib

/-- If a sequence of reals is monotone and bounded, then it is Cauchy. -/
lemma CauchySeq_of_monotone_bounded {u : ℕ → ℝ}
    (hmono : Monotone u) (hb : ∃ M, ∀ n, |u n| ≤ M) :
    CauchySeq u := by
  sorry
