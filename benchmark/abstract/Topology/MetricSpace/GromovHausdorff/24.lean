import Mathlib

/-- If `f : X → Y` is an isometry between compact metric spaces, then the diameter of `X`
equals the diameter of the image of `f`. -/
lemma Isometry.diam_image_eq
    {X Y : Type*} [MetricSpace X] [MetricSpace Y]
    [CompactSpace X] [CompactSpace Y]
    (f : X → Y) (hf : Isometry f) :
    Metric.diam (Set.univ : Set X) = Metric.diam (Set.range f) := by
  sorry