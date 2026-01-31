import Mathlib

/-- A GH-precompact family of compact metric spaces has uniformly bounded diameters. -/
lemma GromovHausdorff.precompact_diam_bounded
    (s : Set GromovHausdorff.GHSpace)
    (hs : TotallyBounded s) :
    ∃ C : ℝ, ∀ p ∈ s,
      Metric.diam (Set.univ : Set (GromovHausdorff.GHSpace.Rep p)) ≤ C := by
  sorry