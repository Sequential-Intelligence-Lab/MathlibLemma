import Mathlib

/-- A characterization of precompact subsets in `GHSpace` via uniform covering numbers
and diameter bounds. -/
lemma GromovHausdorff.precompact_iff
    (s : Set GromovHausdorff.GHSpace) :
    TotallyBounded s ↔
      (∃ C : ℝ, ∀ p ∈ s,
        Metric.diam (Set.univ : Set (GromovHausdorff.GHSpace.Rep p)) ≤ C) ∧
      (∀ ε > 0, ∃ N : ℕ, ∀ p ∈ s,
        ∃ t : Finset (GromovHausdorff.GHSpace.Rep p),
          t.card ≤ N ∧
          (Set.univ : Set (GromovHausdorff.GHSpace.Rep p)) ⊆
            ⋃ x ∈ (t : Set (GromovHausdorff.GHSpace.Rep p)), Metric.ball x ε) := by
  sorry