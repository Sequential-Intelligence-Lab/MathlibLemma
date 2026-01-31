import Mathlib

/-- If the Gromov-Hausdorff distance between two compact spaces is at most `ε`, then
there exist subsets that are `ε`-dense and `3ε`-approximately isometric. -/
lemma GromovHausdorff.exists_approx_subsets_of_ghDist_le
    {X Y : Type*} [MetricSpace X] [CompactSpace X] [Nonempty X]
    [MetricSpace Y] [CompactSpace Y] [Nonempty Y]
    {ε : ℝ} (hε : 0 < ε)
    (h : GromovHausdorff.ghDist X Y ≤ ε) :
    ∃ (s : Set X) (t : Set Y) (Φ : s → t),
      (∀ x : X, ∃ y ∈ s, dist x y ≤ ε) ∧
      (∀ y : Y, ∃ x ∈ t, dist y x ≤ ε) ∧
      (∀ x₁ x₂ : s, |dist x₁ x₂ - dist (Φ x₁) (Φ x₂)| ≤ 3 * ε) := by
  sorry
