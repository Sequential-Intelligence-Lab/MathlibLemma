import Mathlib

/-- A real sequence whose partial sums form a Cauchy sequence is summable. -/
lemma Summable_of_cauchySeq_partial_sums' (u : ℕ → ℝ)
    (h : CauchySeq (fun n => Finset.sum (Finset.range n) (fun k => u k))) :
    Summable u := by
  sorry