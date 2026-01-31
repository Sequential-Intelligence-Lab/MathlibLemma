import Mathlib

/-- If a sequence of reals is such that the sequence of partial sums is Cauchy, then the
series is summable. -/
lemma Summable_of_cauchySeq_partial_sum_real
    (u : ℕ → ℝ)
    (hc : CauchySeq (fun n => ∑ k < n, u k)) :
    Summable u := by
  sorry