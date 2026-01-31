import Mathlib

/-- The map sending a compact metric space to its isometry class in `GHSpace`
is injective on isometry classes. -/
lemma GromovHausdorff.toGHSpace_injective_on_isometryClasses
    {X Y : Type*} [MetricSpace X] [MetricSpace Y]
    [CompactSpace X] [CompactSpace Y] [Nonempty X] [Nonempty Y]
    (h : GromovHausdorff.toGHSpace X = GromovHausdorff.toGHSpace Y) :
    Nonempty (X ≃ᵢ Y) := by
  sorry
