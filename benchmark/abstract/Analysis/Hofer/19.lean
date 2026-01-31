import Mathlib

/-- If a real sequence has bounded differences and converges, then it is Cauchy. -/
lemma CauchySeq_of_tendsto_of_bdd_diff
    (u : ℕ → ℝ) (x : ℝ)
    (hlim : Filter.Tendsto u Filter.atTop (nhds x))
    (hbd : ∃ C : ℝ, ∀ n : ℕ, |u (n + 1) - u n| ≤ C) :
    CauchySeq u := by
  sorry