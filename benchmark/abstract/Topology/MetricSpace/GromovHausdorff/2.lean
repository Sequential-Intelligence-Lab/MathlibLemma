import Mathlib

/-- An isometry between compact metric spaces is 1-Lipschitz with respect to the
Gromov-Hausdorff distance considered as a function on isometry classes. -/
lemma GromovHausdorff.ghDist_le_of_isometry
    {X Y : Type*} [MetricSpace X] [CompactSpace X] [Nonempty X]
    [MetricSpace Y] [CompactSpace Y] [Nonempty Y]
    (e : X ≃ᵢ Y) :
    GromovHausdorff.ghDist X Y = 0 := by
  sorry
