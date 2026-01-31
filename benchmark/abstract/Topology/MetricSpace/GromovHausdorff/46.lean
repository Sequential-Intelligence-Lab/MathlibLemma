import Mathlib

/-- If a family of metric spaces has uniformly bounded doubling constant and diameter,
then it is precompact in the Gromov-Hausdorff topology.

This is only a statement stub; it is not proved here. -/
lemma GromovHausdorff.precompact_of_bounded_doubling
    (ι : Type*) (X : ι → Type*)
    [∀ i, MetricSpace (X i)] [∀ i, CompactSpace (X i)] [∀ i, Nonempty (X i)]
    (C D : ℝ)
    (hdiam : ∀ i, Metric.diam (Set.univ : Set (X i)) ≤ C)
    (hdoubling :
      ∀ (i : ι) (r : ℝ), 0 < r → ∀ (x : X i),
        ∃ s : Finset (X i),
          (∀ y : X i, dist x y ≤ r → ∃ z ∈ s, dist y z ≤ r / 2) ∧
          (s.card : ℝ) ≤ D) :
    TotallyBounded (Set.range (fun i : ι => GromovHausdorff.toGHSpace (X i))) := by
  sorry