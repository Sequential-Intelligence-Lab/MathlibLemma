import Mathlib

/-- If `X` is compact and `f : X → ℝ` is 1-Lipschitz, then the pushforward of `X` by `f`
viewed as a compact subset of `ℝ` has GH-distance at most the oscillation of `f`. -/
lemma GromovHausdorff.ghDist_image_le_oscillation
    {X : Type*} [MetricSpace X] [CompactSpace X] [Nonempty X]
    (f : X → ℝ)
    (hf : LipschitzWith 1 f) :
    ∃ (Y : Type*) (_ : MetricSpace Y) (_ : CompactSpace Y) (_ : Nonempty Y),
      GromovHausdorff.ghDist X Y ≤
        (sSup (Set.range f) - sInf (Set.range f)) := by
  sorry