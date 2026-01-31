import Mathlib

/-- If a map between GH-limits preserves distances on a dense subset, then it is an isometry. -/
lemma GromovHausdorff.isometry_of_preserves_dist_on_dense
    {X Y : Type*} [MetricSpace X] [MetricSpace Y]
    [CompactSpace X] [CompactSpace Y] [Nonempty X] [Nonempty Y]
    (f : X → Y)
    (s : Set X) (hs : Dense s)
    (h : ∀ x y : X, x ∈ s → y ∈ s → dist x y = dist (f x) (f y))
    (hf : Continuous f)
    (hBij : Function.Injective f) :
    Isometry f := by
  sorry