import Mathlib

/-- If `X` is a compact metric space, the map `p ↦ diam (univ : Set (GHSpace.Rep p))`
is locally bounded on `GHSpace`. -/
lemma GromovHausdorff.locallyBounded_diam_on_GHSpace :
    ∀ (p : GromovHausdorff.GHSpace),
    ∃ r > 0, ∃ C, ∀ q ∈ Metric.ball p r,
      Metric.diam (Set.univ : Set (GromovHausdorff.GHSpace.Rep q)) ≤ C := by
  sorry