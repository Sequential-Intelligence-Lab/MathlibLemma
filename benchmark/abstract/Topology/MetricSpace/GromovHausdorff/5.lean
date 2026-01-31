import Mathlib

/-- If there exists an `ε`-isometry between compact metric spaces `X` and `Y`, then
their Gromov-Hausdorff distance is at most `2 * ε`. -/
lemma GromovHausdorff.ghDist_le_of_approx_isometry
    {X Y : Type*} [MetricSpace X] [CompactSpace X] [Nonempty X]
    [MetricSpace Y] [CompactSpace Y] [Nonempty Y]
    (ε : ℝ)
    (Φ : X → Y)
    (hΦ : ∀ x₁ x₂, |dist x₁ x₂ - dist (Φ x₁) (Φ x₂)| ≤ ε)
    (h_dense : ∀ y : Y, ∃ x, dist y (Φ x) ≤ ε) :
    GromovHausdorff.ghDist X Y ≤ 2 * ε := by
  sorry
