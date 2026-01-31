import Mathlib

/-- If two compact metric spaces are GH-close, then the covering number function
is approximately preserved. -/
lemma GromovHausdorff.covering_numbers_approx
    {X Y : Type*} [MetricSpace X] [MetricSpace Y]
    [CompactSpace X] [CompactSpace Y] [Nonempty X] [Nonempty Y]
    (ε : ℝ)
    (h : GromovHausdorff.ghDist X Y ≤ ε) :
    ∀ (r : ℝ), r > 0 → ∃ C > 0,
      ∀ N,
        (∃ s : Set X, Nat.card s ≤ N ∧
          Set.univ ⊆ ⋃ x ∈ s, Metric.ball x r) →
        ∃ t : Set Y, Nat.card t ≤ N * Nat.ceil (C / r) ∧
          Set.univ ⊆ ⋃ y ∈ t, Metric.ball y (r + ε) := by
  sorry