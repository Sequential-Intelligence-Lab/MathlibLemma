import Mathlib

/-- If a function between metric spaces almost preserves distances on a dense subset,
and its image is relatively compact, then its closure yields a compact metric space
whose Gromov-Hausdorff distance to the domain is bounded. -/
lemma GromovHausdorff.ghDist_le_of_almost_isometry_on_dense
    {X Y : Type*} [MetricSpace X] [CompactSpace X] [Nonempty X]
    [MetricSpace Y]
    (s : Set X) (hs : Dense s)
    (Φ : s → Y)
    (hΦdist : ∀ x y, |dist x y - dist (Φ x) (Φ y)| ≤ (1 : ℝ))
    (hRelComp : IsCompact (closure (Set.range Φ))) :
    ∃ (Z : Type*) (_ : MetricSpace Z) (_ : CompactSpace Z) (_ : Nonempty Z),
      GromovHausdorff.ghDist X Z ≤ (2 : ℝ) := by
  sorry