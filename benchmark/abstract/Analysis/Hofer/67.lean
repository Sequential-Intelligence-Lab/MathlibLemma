import Mathlib

/-- If a real sequence is Cauchy and all its values lie in a closed interval, then the limit
exists and lies in that interval. -/
lemma CauchySeq.exists_tendsto_and_mem_Icc
    (u : ℕ → ℝ) (a b : ℝ) (hab : a ≤ b)
    (hc : CauchySeq u) (hu : ∀ n, u n ∈ Set.Icc a b) :
    ∃ x ∈ Set.Icc a b, Filter.Tendsto u Filter.atTop (nhds x) := by
  sorry