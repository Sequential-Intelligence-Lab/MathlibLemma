import Mathlib

/-- If a real sequence is Cauchy and all its values lie in a closed interval, then the limit
exists and lies in that interval. -/
lemma CauchySeq.exists_tendsto_and_mem_Icc
    (u : ℕ → ℝ) (a b : ℝ) (hab : a ≤ b)
    (hc : CauchySeq u) (hu : ∀ n, u n ∈ Set.Icc a b) :
    ∃ x ∈ Set.Icc a b, Filter.Tendsto u Filter.atTop (nhds x) := by
  -- By completeness of `ℝ`, a Cauchy sequence has a limit.
  obtain ⟨x, hx⟩ := cauchySeq_tendsto_of_complete hc
  -- Show that this limit lies in the closed interval `[a, b]`.
  have hxmem : x ∈ Set.Icc a b := by
    have hclosed : IsClosed (Set.Icc a b) := isClosed_Icc
    have hmem : ∀ᶠ n in Filter.atTop, u n ∈ Set.Icc a b :=
      Filter.Eventually.of_forall hu
    exact hclosed.mem_of_tendsto hx hmem
  -- Conclude with the required existential statement.
  exact ⟨x, hxmem, hx⟩