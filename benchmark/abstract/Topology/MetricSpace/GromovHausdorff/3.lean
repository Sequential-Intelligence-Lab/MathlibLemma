import Mathlib

/-- Gromov-Hausdorff distance is symmetric on compact metric spaces. -/
lemma GromovHausdorff.ghDist_comm
    (X : Type*) [MetricSpace X] [CompactSpace X] [Nonempty X]
    (Y : Type*) [MetricSpace Y] [CompactSpace Y] [Nonempty Y] :
    GromovHausdorff.ghDist X Y = GromovHausdorff.ghDist Y X := by
  sorry
