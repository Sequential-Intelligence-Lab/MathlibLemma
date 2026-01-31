import Mathlib

/-- If a function between compact metric spaces is bi-Lipschitz with constant `K ≥ 1`,
then the Gromov-Hausdorff distance between them is bounded by a function of `K`
and the diameter. -/
lemma GromovHausdorff.ghDist_le_of_biLipschitz
    {X Y : Type*} [MetricSpace X] [MetricSpace Y]
    [CompactSpace X] [CompactSpace Y] [Nonempty X] [Nonempty Y]
    (f : X → Y)
    (K : ℝ) (hK : 1 ≤ K)
    (hf1 : ∀ x y, dist (f x) (f y) ≤ K * dist x y)
    (hf2 : ∀ x y, dist x y ≤ K * dist (f x) (f y)) :
    GromovHausdorff.ghDist X Y ≤ (K - 1) * Metric.diam (Set.univ : Set X) := by
  sorry