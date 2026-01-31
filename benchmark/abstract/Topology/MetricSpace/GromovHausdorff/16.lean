import Mathlib

/-- If `X` and `Y` are finite metric spaces with the same cardinality,
then the Gromov-Hausdorff distance is bounded by the minimum over bijections of
the distortion of the bijection. -/
lemma GromovHausdorff.ghDist_le_min_distortion_finite
    {X Y : Type*} [Fintype X] [Fintype Y]
    [MetricSpace X] [MetricSpace Y]
    [Nonempty X] [Nonempty Y]
    (hcard : Fintype.card X = Fintype.card Y) :
    GromovHausdorff.ghDist X Y ≤
      sInf {ε : ℝ |
        ∃ (f : X → Y) (hf_bij : Function.Bijective f),
          ∀ x₁ x₂, |dist x₁ x₂ - dist (f x₁) (f x₂)| ≤ ε} := by
  sorry